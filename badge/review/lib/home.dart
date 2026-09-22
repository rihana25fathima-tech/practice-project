
import 'package:flutter/material.dart';
import 'package:review/model/model.dart';
import 'package:review/service/service.dart';

class Homepage extends StatefulWidget {
  const new({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final service = UserService();

  TextEditingController nameController =TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController emailController = TextEditingController();

//save
void savedd()async{
User user =User
(name: nameController.text, 
age: ageController.text,
 email: emailController.text,
 );
 await service.saveUser(user);
nameController.clear();
ageController.clear();
emailController.clear();
setState(() {
  
});
Navigator.pop(context);
}
  //popuo
  void show() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Add User"),

          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: nameController,
                decoration: const InputDecoration(labelText: "Name"),
              ),

              TextField(
                controller: ageController,
                decoration: const InputDecoration(labelText: "Age"),
              ),

              TextField(
                controller: emailController,
                decoration: const InputDecoration(labelText: "Email"),
              ),
            ],
          ),
          actions: [
            TextButton(onPressed: () {
              savedd();
          
            }, child: Text("save"))
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {

    //get 
    final users = service.getAllUsers();

    return Scaffold(
      appBar: AppBar(title: Text("User details")),

      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
        final user = users[index];
   return Card(
margin: EdgeInsets.all(10),
child: Padding(padding: EdgeInsets.all(15),
child: Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Text("User details"),
    SizedBox(height: 10,),
    Text("name : ${user.name}"),
    Text("age : ${user.age}"),
    Text("email : ${user.email}"),
  ],
),
),
   );
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          show();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
