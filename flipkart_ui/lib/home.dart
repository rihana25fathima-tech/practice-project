
import 'package:flipkart_ui/product_card.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text("Flipkart", style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),

      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              height: 50,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.pink),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  SizedBox(width: 15),
                  Icon(Icons.search, size: 30),
                  SizedBox(width: 10),
                  Text("Search products"),
                ],
              ),
            ),
            SizedBox(height: 30),
            //rowssssss
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    CircleAvatar(child: Icon(Icons.local_offer)),
                    Text("Top offer"),
                  ],
                ),

                Column(
                  children: [
                    CircleAvatar(child: Icon(Icons.smartphone)),
                    Text("Mobiles"),
                  ],
                ),

                Column(
                  children: [
                    CircleAvatar(child: Icon(Icons.checkroom)),
                    Text("Fashion"),
                  ],
                ),

                Column(
                  children: [
                    CircleAvatar(child: Icon(Icons.devices)),
                    Text("Electronic"),
                  ],
                ),
              ],
            ),

            SizedBox(height: 20,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    CircleAvatar(child: Icon(Icons.chair)),
                    Text("Furniture"),
                  ],
                ),
                Column(
                  children: [
                    CircleAvatar(child: Icon(Icons.face_retouching_natural)),
                    Text("Beauty"),
                  ],
                ),
                Column(
                  children: [
                    CircleAvatar(child: Icon(Icons.laptop)),
                    Text("Laptop"),
                  ],
                ),

                Column(
                  children: [
                    CircleAvatar(child: Icon(Icons.menu_book)),
                    Text("Books"),
                  ],
                ),
              ],
            ),
         
          SizedBox(height: 20),
          Container(
            height: 180,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(image: AssetImage("assets/images/banner.jpg"),
              fit: BoxFit.cover,
              )
            ),
          ),

          //catagaries

           SizedBox(height: 15,),

           Text("Best Deals",
           style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
           ),),
   
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ProductCard(
                image:"assets/images/lap.jpg",
                name:"Laptop",
                price:"68000",        
                ),
              
              ProductCard(
                image:"assets/images/phone.jpg",
                name:"Iphone 15",
                price:"700000",
              ),
            ],
          )


          



          ],
        ),
      ),
    );
  }
}
