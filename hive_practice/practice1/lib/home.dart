import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  TextEditingController namecontroller = TextEditingController();
  TextEditingController passcontroller = TextEditingController();
  List<String> name = [];
  List<String> pass = [];
  //save
  Future<void> savename() async {
    final pref = await SharedPreferences.getInstance();
    pref.setStringList("name", name);
    namecontroller.clear();
  }

  Future<void> savepass() async {
    final pref = await SharedPreferences.getInstance();
    pref.setStringList("pass", pass);
    passcontroller.clear();
  }

  //get
  Future<void> get() async {
    final pref = await SharedPreferences.getInstance();
    final saveddname = pref.getStringList("name");
    setState(() {
      name = saveddname ?? [];
    });
  }

  Future<void> getpass() async {
    final pref = await SharedPreferences.getInstance();
    final saveddpass = pref.getStringList("pass");
    setState(() {
      pass = saveddpass ?? [];
    });
  }

  //delete
  Future<void> deletedata(int index) async {
    final pref = await SharedPreferences.getInstance();
setState(() {
  name.removeAt(index);
  pass.removeAt(index);
});
await pref.setStringList("name", name);
await pref.setStringList("pass", pass);
    
  }


  @override
  void initState() {
    super.initState();
    get();
    getpass();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: namecontroller,
              decoration: InputDecoration(
                hintText: "enter name",
                border: OutlineInputBorder(),
              ),
            ),
            TextField(
              controller: passcontroller,
              decoration: InputDecoration(
                hintText: "enter password",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  name.add(namecontroller.text);
                  pass.add(passcontroller.text);
                });
                savename();
                savepass();
              },
              child: Text("Save"),
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(name[index]),
                    subtitle: Text(pass[index]),
                    trailing: IconButton(onPressed: () {
                      deletedata(index);
                    }, icon: Icon(Icons.delete)),
                    
                  );
                },
                itemCount: name.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
