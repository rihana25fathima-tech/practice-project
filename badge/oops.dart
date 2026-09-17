//  =========//iheritance//=====
// class Vahicle{
//   void sound(){
//     print("Vahicles");
//   } 
// }
// class Car extends Vahicle {
//   void car(){
//     print("Carss");
//   }
// }
// class Bike extends Vahicle {
//   void bike(){
//     print("bikess");
//   }
// }
// void main(){
//   Car c = Car();
//   Bike b =Bike();
//   c.sound();
//   c.car();
//   b.sound();
//   b.bike();
// }
//==========polymorphism=========
// class Payments{
//   void pay(){
//     print("payments");
//   }
// }
// class UPLPayments extends Payments{
//   @override
//   void pay(){
//     print(" UPi payment");
//   }
// }
// class CardPayments extends Payments{
//   @override
//   void pay(){
//     print(" card payment");
//   }
// }
// class CashPayments extends Payments{
//   @override
//   void pay(){
//     print("cash payment");
//   }
// }
// void main(){
//   Payments p1 =UPLPayments();
//   Payments p2 =CardPayments();
//   Payments p3 =CashPayments();

//   p1.pay();
//   p2.pay();
//   p3.pay();
// }
// ==================Abstraction==============
// abstract class Employee {
//   void calcilateSalary(){
//     print("calculate embloyye salary");
//   }
// } 
// class Fulltimesalary extends Employee{
//   void Fulltimesalaryy(){
//     print("claculate fulltime salary");
//   }
// }
// class partimesalary extends Employee{
//   void partimesalaryy(){
//     print("claculate fulltime salary");
//   }
// }
// void main(){
//   Fulltimesalary f =Fulltimesalary();
//   partimesalary p =partimesalary();
//   f.calcilateSalary();
//   f.Fulltimesalaryy();
//   p.calcilateSalary();
//   p.partimesalaryy();
// }
//================Encapsulation==============
class User{
  String _password;
  String _username;

  User(this._password,this._username);

  //set
  void setPass(String passs){
    _password = passs;
  }
  //
  void setuser(String user){
    _username =user;
  }
  //get
  String getpass(){
    return _password;
  }
  //
  String getuser(){
    return _username;
  }
}
void main(){
  User u =User("1234", "Rihnaa");
  u._password;
  u._username;
  // print(u.getpass());
  print(u._username);
  print(u._password);
}