import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart"),
      ),

      body: Padding(padding: EdgeInsets.all(19),
      child: Column(
        children: [
          Card(
            child: ListTile(
              leading: Image.asset(
                "assets/images/phone.jpg",
                width: 60,
              ),

              title: Text("Iphone 15"),
              subtitle: Text("₹700000"),
              trailing: Text("qty : 1"),
            ),
          ),

          SizedBox(height: 20,),

          Text("Total : ₹700000",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),),
        ],
      ),
      
      ),
    );
  }
}