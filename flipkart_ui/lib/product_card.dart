import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {

 final String image;
 final String name;
 final String price;



  const ProductCard({super.key,
  required this.image,
  required this.name,
  required this.price,
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

),

Text(
  price,
),





           
        ],
      ),
      ),
      ),
    );
  }
}


