import classRoom from 0x05;

transaction(_firstname:String,_lastname:String,_age:UInt) {

  prepare(signer: AuthAccount) {
  
  }

  execute {
      classRoom.registerStudent (_firstname:_firstname,_lastname:_lastname,_age:_age)
  }
}
