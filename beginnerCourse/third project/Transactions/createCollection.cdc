import NonFungibleToken from 0x05
import CryptoPoops from 0x05
transaction() {

  prepare(acct: AuthAccount) {
    log(acct.address)

    let collection <- CryptoPoops.createEmptyCollection()

    acct.save(<- collection, to: /storage/cryptopoops)

    acct.link<&CryptoPoops.Collection{NonFungibleToken.Receiver, NonFungibleToken.CollectionPublic, CryptoPoops.authNFT}>(/public/cryptoPoops, target:/storage/cryptopoops)
  }

  execute {
   log("you can now receive your cryptopoops")
  }
}
