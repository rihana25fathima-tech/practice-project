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
    return Card(
      elevation: 5,
      child: SizedBox(width: 160,
      child: Padding(padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            image,
            height: 100,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
SizedBox(height: 10,),

Text(
  name,
style: TextStyle(
  fontWeight:FontWeight.bold,
  fontSize: 16,
),
),
SizedBox(height: 5,),

Text(
  price,
  style: TextStyle(
    fontWeight: FontWeight.bold,
    color: const Color.fromARGB(255, 9, 124, 13),
    fontSize: 15,
  ),
),


Row(
  children: [
    Icon(Icons.star,
    color: Colors.amber,
    size: 18,),
  ],
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
      ),
      ),
    );
  }
}
