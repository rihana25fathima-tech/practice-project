import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String image;
  final String name;
  final String price;
  final String rating;

  const ProductCard({
    super.key,
    required this.image,
    required this.name,
    required this.price,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Card(
      elevation: 3,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),

      child: Padding(
        padding: EdgeInsets.all(screenWidth * 0.025),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  image,
                  // height: screenWidth * 0.28,
                  width: double.infinity,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            SizedBox(height: screenWidth * 0.015),

            Text(
              name,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: screenWidth * 0.039,
              ),
            ),
            SizedBox(height: screenWidth * 0.008),

            Text(
              "₹$price",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 9, 124, 13),
                fontSize: screenWidth * 0.037,
              ),
            ),
            SizedBox(height: screenWidth * 0.008),

            Row(
              children: [
                Icon(Icons.star, color: Colors.amber, size: screenWidth * 0.04),

                SizedBox(width: screenWidth * 0.01),

                Text(
                  rating,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 0.033,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
