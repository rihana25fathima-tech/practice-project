class Employee{
  String name;
  double salary;
  Employee(this.name,this.salary);
  void displaydetails(){
    print("name : $name");
    print("salary : $salary");
  }
}
class Developer extends Employee{
String programlanguage;
Developer(String name,double salary,this.programlanguage) : super(name,salary);
void writecode(){
  displaydetails();
  print("program language:$programlanguage");
}
}
void main(){
  Developer dev =Developer("Rihana", 200000, "dart");

  dev.writecode();
}