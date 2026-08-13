import 'package:flipkart_ui/account_page.dart';
import 'package:flipkart_ui/cart_page.dart';
import 'package:flipkart_ui/catagory.dart';
import 'package:flipkart_ui/constants/strings.dart';
import 'package:flipkart_ui/home.dart';
import 'package:flipkart_ui/order_page.dart';
import 'package:flipkart_ui/product_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final List<Map<String, String>> products = [
      {
        "image": "assets/images/lap.jpg",
        "name": "Laptop",
        "price": "680000",
        "rating": "2.5",
      },
      {
        "image": "assets/images/phone.jpg",
        "name": "Iphone 15",
        "price": "70000",
        "rating": "4.5",
      },
      {
        "image": "assets/images/headphone.jpg",
        "name": "Headphone",
        "price": "10000",
        "rating": "3.0",
      },
      {
        "image": "assets/images/mouse.jpg",
        "name": "Mouse",
        "price": "900",
        "rating": "2.3",
      },
    ];

    List<Map<String, dynamic>> Catagories = [
      {"icon": Icons.local_offer, "title": "Top offers"},
      {"icon": Icons.smartphone, "title": "Mobile phones"},
      {"icon": Icons.laptop, "title": "Laptop"},
      {"icon": Icons.chair, "title": "Chairs"},
      {"icon": Icons.watch, "title": "Watches"},
      {"icon": Icons.headphones, "title": "Headphones"},
    ];

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50,
        title: Padding(padding: EdgeInsets.only(bottom: 2,left: 50),
        child:Row(
          children: [
          Text(
            "Flipkart",
            style: TextStyle(fontWeight: FontWeight.bold,fontSize: screenWidth * 0.075,
            ),
          ),

          SizedBox(width: 4,),

          Image.asset("assets/images/flip.jpg",
          width: 35,
          height: 35,
          ),
          ],
        ),
        ),
        actions: [
          IconButton(
            onPressed: () {}, 
            icon: Icon(Icons.notifications),
          ),

          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => CartPage(),));
          },
          icon: Icon(Icons.shopping_cart),
          ),
        ],
      ),

      drawer: Drawer(
      
        child: ListView(
          children: [
            DrawerHeader(child: Text(AppStrings.appName,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {
                Navigator.pop(context,
                MaterialPageRoute(builder: (context) => Homepage(),));
              },
            ),
                      ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text("Cart"),
              onTap: () {
                Navigator.push(context,
                MaterialPageRoute(builder: (context) => CartPage(),));
              },
            ),
                      ListTile(
              leading: Icon(Icons.receipt_long),
              title: Text("Orders"),
              onTap: () {
                Navigator.push(context,
                MaterialPageRoute(builder: (context) => OrderPage(),));
              },
            ),
                      ListTile(
              leading: Icon(Icons.person),
              title: Text("Account"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AccountPage(),));
              },
            ),
          ],
        ),
      ),
    
    

      body: Padding(
        padding: EdgeInsets.all(screenWidth * 0.05),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 50,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color.fromARGB(255, 30, 6, 14),
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    SizedBox(width: 15),
                    Icon(Icons.search, size: 30),
                    SizedBox(width: 10),

                    Expanded(child: TextField(
                      decoration: InputDecoration(
                        hintText: AppStrings.searchHint,
                        border: InputBorder.none,
                      ),
                    ))


                  ],
                ),
              ), 

              SizedBox(height: 20),
              Container(
                height: screenWidth * 0.45,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                    image: AssetImage("assets/images/ban.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              //catagries
              SizedBox(height: 20),

             
              SizedBox(
                height: screenWidth * 0.25,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.025),
                  itemCount: Catagories.length,
                  itemBuilder: (context, index) {
                   final item = Catagories[index];

                    return Padding(
                      padding: EdgeInsets.only(right: screenWidth * 0.05),
                      child: Catagory(
                        icon: item["icon"],
                        titile: item["title"],
                      ),
                    );
                  },
                ),
              ),

              // product card
              SizedBox(height: 20),

            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: products.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: screenWidth > 600 ? 3:2,crossAxisSpacing: 10,mainAxisSpacing: 10,childAspectRatio: 0.69),
             itemBuilder:(context, index) {
              return ProductCard(
                image: products[index]["image"]!,
               name: products[index]["name"]!,
                price:products[index]["price"]! , 
                rating: products[index]["rating"]!,
                );
               
             },),

            ],
          ),
        ),
      ),
    );
  }
}
