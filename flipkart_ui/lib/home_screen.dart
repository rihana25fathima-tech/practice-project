import 'package:flipkart_ui/account_page.dart';
import 'package:flipkart_ui/cart_page.dart';
import 'package:flipkart_ui/catagory.dart';
import 'package:flipkart_ui/constants/strings.dart';
import 'package:flipkart_ui/order_page.dart';
import 'package:flipkart_ui/product_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    final List<String> banners = [
      "assets/images/ban.jpg",
      "assets/images/ban2.jpg",
      // "assets/images/banner3.jpg",
      // "assets/images/banner4.jpg",
    ];

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

    List<Map<String, dynamic>> Categories = [
      {"icon": Icons.local_offer, "title": "Top offers"},
      {"icon": Icons.smartphone, "title": "Mobile phones"},
      {"icon": Icons.laptop, "title": "Laptop"},
      {"icon": Icons.chair, "title": "Chairs"},
      {"icon": Icons.watch, "title": "Watches"},
      {"icon": Icons.headphones, "title": "Headphones"},
    ];

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: screenWidth * 0.14,
        centerTitle: true,

        title: Row(
      
          mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Flipkart",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: screenWidth * 0.065,
                ),
              ),

              SizedBox(width: 4),

              Image.asset("assets/images/flip.jpg", 
              // width: 35, height: 35
              width: screenWidth *0.08,
              height: screenWidth *0.08,
              ),
            ],
          ),
        
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications,size: screenWidth * 0.06,),),

          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CartPage(),
                ),
              );
            },
            icon: Icon(Icons.shopping_cart,size: screenWidth * 0.06,
            ),
          ),
        ],
      ),

      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Text(
                AppStrings.appName,
                style: TextStyle(fontSize: screenWidth * 0.065, fontWeight: FontWeight.bold
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {
                Navigator.pop(context );
              },
            ),
            ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text("Cart"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CartPage(),),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.receipt_long),
              title: Text("Orders"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => OrderPage(),),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Account"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AccountPage()),
                );
              },
            ),
          ],
        ),
      ),

      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.03,),

        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: screenWidth * 0.025),

              Container(
                height: screenWidth * 0.12,

                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  border: Border.all(
                    color: const Color.fromARGB(255, 30, 6, 14),
                  ),
                  borderRadius: BorderRadius.circular(screenWidth * 0.03,),
                ),

                child: Row(
                  children: [
                    SizedBox(width: screenWidth * 0.035),
                    Icon(Icons.search, size: screenWidth * 0.065,color: Colors.grey.shade700,
                    ),
                

                    Expanded(
                      child: TextField(
                        style: TextStyle(
                          fontSize: screenWidth * 0.038,
                        ),

                        decoration: InputDecoration(
                          hintText: AppStrings.searchHint,
                          hintStyle:TextStyle(
                            fontSize: screenWidth * 0.038,
                            color: Colors.grey,
                          ) ,
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: screenWidth * 0.025),
              SizedBox(
                height: screenWidth * 0.35,
                width: double.infinity,

                child: PageView.builder(
                  itemCount: banners.length,

                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.symmetric(horizontal: screenWidth * 0.01,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(screenWidth * 0.03,
                        ),
                        image: DecorationImage(
                          image: AssetImage(banners[index],
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                ),
              ),

              //catagries
              SizedBox(height: screenWidth * 0.03),

              SizedBox(
                height: screenWidth * 0.25,

                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.symmetric(
                    horizontal: screenWidth * 0.01,
                  ),
                  itemCount: Categories.length,
                  itemBuilder: (context, index) {
                    final item = Categories[index];

                    return Padding(
                      padding: EdgeInsets.only(right: screenWidth * 0.02,
                      ),
                      child:SizedBox(width: screenWidth * 0.20,
                      child: Catagory(
                        icon: item["icon"],
                        titile: item["title"],
                      ),
                      ),
                    );
                  },
                ),
              ),

              // product card
              SizedBox(height: screenWidth * 0.01),

              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: products.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: screenWidth > 900 
                  ?4
                  : screenWidth > 600
                  ?3
                  :2,
                  crossAxisSpacing: screenWidth * 0.02,
                  mainAxisSpacing: screenWidth * 0.02,
                  childAspectRatio: 0.78,
                ),

                itemBuilder: (context, index) {
                  return ProductCard(
                    image: products[index]["image"]!,
                    name: products[index]["name"]!,
                    price: products[index]["price"]!,
                    rating: products[index]["rating"]!,
                  );
                },
              ),
              SizedBox(height: screenWidth * 0.04,),
            ],
          ),
        ),
      ),
    );
  }
}
