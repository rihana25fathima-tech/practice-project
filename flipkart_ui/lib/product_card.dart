import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {

 final String image;
 final String name;
 final String price;
 final String rating;



  const ProductCard({super.key,
  required this.image,
  required this.name,
  required this.price, 
  required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Card(
      elevation: 5,
      child: Padding(
        padding: EdgeInsets.all(screenWidth * 0.04),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            image,
            height: screenWidth * 0.28 ,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
SizedBox(height: 10,),

Text(
  name,
style: TextStyle(
  fontWeight:FontWeight.bold,
  fontSize: screenWidth * 0.04,
),
),
SizedBox(height: 5),

Text(
  price,
  style: TextStyle(
    fontWeight: FontWeight.bold,
    color: const Color.fromARGB(255, 9, 124, 13),
    fontSize: screenWidth *0.037,
  ),
),


Row(
  children: [
    Icon(Icons.star,
    color: Colors.amber,
    size: screenWidth * 0.045,
    ),

    SizedBox(width: 5,),
    
Text(
  rating,
  
  style: TextStyle(
    fontWeight: FontWeight.bold,
    
    )
  ),
  ],
),
        ],
      ),
      ),
      );
  }
}
