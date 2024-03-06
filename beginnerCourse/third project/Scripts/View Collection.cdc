import NonFungibleToken from 0x05
import CryptoPoops from 0x05

pub fun main(owner: Address) {
   let collection =getAccount(owner).getCapability<&CryptoPoops.Collection{NonFungibleToken.CollectionPublic}>(/public/cryptoPoops).borrow()
                              ?? panic("the beneficiary does not have a cryptopoops collection")

    log(collection.getIDs())                          
}
