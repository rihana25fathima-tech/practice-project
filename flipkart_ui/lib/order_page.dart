import 'package:flutter/material.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    final imageSize = screenWidth < 400 ? 65.0 : 80.0;

    return Scaffold(
      appBar: AppBar(title: Text("Orders"), centerTitle: true),

      body: Column(
        children: [
          // Search + Filter
          Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 48,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Search your order here",
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 16),
                        prefixIcon: Icon(Icons.search, color: Colors.grey),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: screenWidth < 400 ? 8 : 12),

                const Row(
                  children: [
                    Icon(Icons.filter_list),
                    SizedBox(width: 5),
                    Text("Filters", style: TextStyle(fontSize: 16)),
                  ],
                ),
              ],
            ),
          ),
          Divider(height: 1),
          Expanded(
            child: ListView(
              children: [
                OrderCard(
                  image: "assets/images/lap.jpg",
                  status: "Delivery expected by Aug 20",
                  product: "lap",
                  imageSize: imageSize,
                ),

                OrderCard(
                  image: "assets/images/mouse.jpg",
                  status: "Delivered on Aug 12",
                  product: "Men's Regular Fit Shirt",
                  imageSize: imageSize,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  static Widget OrderCard({
    required String image,
    required String status,
    required String product,
    required double imageSize,
  }) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.grey.shade300)),
      ),

      child: Row(
        children: [
          SizedBox(
            width: imageSize,
            height: imageSize,
            child: Image.asset(image, fit: BoxFit.contain),
          ),
          SizedBox(width: 15),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  status,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  product,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(color: Colors.grey.shade600, fontSize: 14),
                ),
              ],
            ),
          ),
          SizedBox(width: 8),
          Icon(Icons.arrow_forward_ios, size: 16),
        ],
      ),
    );
  }
}
