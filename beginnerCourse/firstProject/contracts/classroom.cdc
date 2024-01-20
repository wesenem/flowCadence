
pub contract classRoom {

 // state 

 pub let students:[Student]


 pub struct Student {
   pub let firstname: String ;
    pub let lastname: String;
    pub var age: UInt;

    init (_firstname:String,_lastname:String,_age:UInt) {
      self.firstname = _firstname;
      self.lastname = _lastname;
      self.age = _age;
    }

  }


 init () {
    self.students = [];
 }

 // logic

 pub fun registerStudent (_firstname:String,_lastname:String,_age:UInt) {
    let newStudent = Student(_firstname : _firstname, _lastname : _lastname, _age : _age); 
    self.students.append(newStudent);
  }
}

