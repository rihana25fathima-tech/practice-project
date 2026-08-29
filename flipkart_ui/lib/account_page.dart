import 'package:flipkart_ui/Login_page.dart';
import 'package:flipkart_ui/order_page.dart';
import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Account", style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          CircleAvatar(child: Icon(Icons.person, size: 50)),
          SizedBox(height: 10),
          Center(
            child: Text(
              "Rihana Fathima",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),

          Center(
            child: Text(
              "rihana25fathima@gmail.com",
              style: TextStyle(fontSize: 16),
            ),
          ),

          SizedBox(height: 20),

          ListTile(
            leading: Icon(Icons.shopping_bag),
            title: Text("My orders"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => OrderPage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text("Wishelist"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text("Notifications"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text("Logout"),
            onTap: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
                (route) => false,
              );
            },
          ),
        ],
      ),
    );
  }
}
