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
class Payments{
  void pay(){
    print("payments");
  }
}
class UPLPayments extends Payments{
  @override
  void pay(){
    print(" UPi payment");
  }
}
class CardPayments extends Payments{
  @override
  void pay(){
    print(" card payment");
  }
}
class CashPayments extends Payments{
  @override
  void pay(){
    print("cash payment");
  }
}
void main(){
  Payments p1 =UPLPayments();
  Payments p2 =CardPayments();
  Payments p3 =CashPayments();

  p1.pay();
  p2.pay();
  p3.pay();
}
