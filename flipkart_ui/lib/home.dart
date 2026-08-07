
import 'package:flipkart_ui/catagory.dart';
import 'package:flipkart_ui/product_card.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {

  final List<Map<String,String>>products=[
      {
        "image" : "assets/images/lap.jpg",
        "name" : "Laptop",
        "price" : "680000",
        "rating" : "2.5",
      },
      {
        "image" : "assets/images/phone.jpg",
        "name" : "Iphone 15",
        "price" : "70000",
        "rating" :"4.5",
      },
      {
        "image" : "assets/images/headphone.jpg",
        "name" : "Headphone",
        "price" : "10000",
        "rating" : "3.0",
      },
      {
        "image" : "assets/images/mouse.jpg",
        "name" : "Mouse",
        "price" : "900",
        "rating" : "2.3",
      }
      ];



    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(241, 241, 244, 1),
        // title: Text("Flipkart", style: TextStyle(fontWeight: FontWeight.bold)),
        // centerTitle: true,
        title: Image.asset("assets/images/logo.jpg",
        
        height: 340,),
        centerTitle: true,
        
         
      ),

      body: Padding(
        padding: EdgeInsets.all(20),
        child:SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 50,
              decoration: BoxDecoration(
                border: Border.all(color: const Color.fromARGB(255, 30, 6, 14)),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  SizedBox(width: 15),
                  Icon(Icons.search, size: 30),
                  SizedBox(width: 10),
                  Text("Search for products"),
                ],
              ),
            ),


            

            
         
          SizedBox(height: 20),
          Container(
            height: 180,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(image: AssetImage("assets/images/ban.jpg"),
              fit: BoxFit.cover,
              )
            ),
          ),

//catagries
SizedBox(height: 20,),

SizedBox(
  height: 100,
  child: ListView(
    scrollDirection: Axis.horizontal,
    padding: EdgeInsets.symmetric(horizontal: 10),
    children: [
      Catagory(icon: Icons.local_offer, titile: "Top offers"),
      SizedBox(width: 20,),
      Catagory(icon: Icons.smartphone, titile: "Mobile phones"),
      SizedBox(width: 20,),
      Catagory(icon: Icons.laptop, titile: "Laptop"),
      SizedBox(width: 20,),
      Catagory(icon: Icons.chair, titile: "Chairs"),
      Catagory(icon: Icons.local_offer, titile: "Top offers"),
      SizedBox(width: 20,),
      Catagory(icon: Icons.smartphone, titile: "Mobile phones"),
      SizedBox(width: 20,),
      Catagory(icon: Icons.laptop, titile: "Laptop"),
      SizedBox(width: 20,),
      Catagory(icon: Icons.chair, titile: "Chairs"),

    ],
  ),
),



          
// product card
           SizedBox(height: 15,),

           Text("Best Deals",
           style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
           ),),
   
        SizedBox(height: 15,),


      SizedBox(
  height: 250,
  child: ListView.builder(
    scrollDirection: Axis.horizontal,
    itemCount: products.length,
    itemBuilder: (context, index) {
      return ProductCard(
        image: products[index]["image"]!,
        name: products[index]["name"]!,
        price: products[index]["price"]!,
        rating : products[index]["rating"]!

        
      );
    },
  ),
),


          ],
        ),
      ),
      ),
    );
  }
}
