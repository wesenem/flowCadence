import NonFungibleToken from 0x05
import CryptoPoops from 0x05

pub fun main(owner: Address, id: UInt64) {
   let collection =getAccount(owner).getCapability<&CryptoPoops.Collection{CryptoPoops.authNFT}>(/public/cryptoPoops).borrow()
                              ?? panic("the beneficiary does not have a cryptopoops collection")

    let cryptopoop =collection.borrowAuthNFT(id: id)

    log(cryptopoop.name)
    log(cryptopoop.luckyNumber)
    log(cryptopoop.favouriteFood)                       
}
