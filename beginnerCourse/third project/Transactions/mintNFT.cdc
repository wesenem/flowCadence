import NonFungibleToken from 0x05
import CryptoPoops from 0x05

transaction(name: String, favouriteFood: String, luckyNumber: Int, beneficiary: Address) {
    prepare(acct: AuthAccount) {

        let minter = acct.borrow<&CryptoPoops.Minter>(from: /storage/Minter)

                    ?? panic("you dont have permission to make cryptopoops")

        let nft <-minter.createNFT(name: name, favouriteFood: favouriteFood, luckyNumber: luckyNumber)

        let collection = getAccount(beneficiary).getCapability<&CryptoPoops.Collection{NonFungibleToken.Receiver}>(/public/cryptoPoops).borrow()
                             ?? panic("the beneficiary does not have a cryptopoops collection")

        collection.deposit(token: <-nft)                      

    }

    execute {
        log("created NFT successfully")
        log("cryptoPoop was given away succesfully")

    }
}