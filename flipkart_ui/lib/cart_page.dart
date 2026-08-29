import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Cart", style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(screenWidth * 0.04),
          child: Column(
            children: [
              Card(
                elevation: 2,
                margin: EdgeInsets.zero,
                child: Padding(
                  padding: EdgeInsets.all(screenWidth * 0.03),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            "assets/images/phone.jpg",
                            width: screenWidth * 0.22,
                            height: screenWidth * 0.22,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(width: screenWidth * 0.03),

                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Iphone 15",
                                  style: TextStyle(
                                    fontSize: screenWidth * 0.045,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  "₹70000",
                                  style: TextStyle(
                                    fontSize: screenWidth * 0.04,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 5),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                      size: 18,
                                    ),
                                    SizedBox(width: 4),
                                    Text("4.5"),
                                  ],
                                ),
                                SizedBox(height: 5),

                                const Text(
                                  "Free Delivery",
                                  style: TextStyle(
                                    color: Colors.green,
                                    fontSize: 13,
                                  ),
                                ),
                                SizedBox(height: 10),

                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      height: 32,
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Colors.black),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Row(
                                        children: [
                                          IconButton(
                                            onPressed: () {},
                                            padding: EdgeInsets.zero,
                                            constraints: BoxConstraints(
                                              minWidth: 30,
                                              minHeight: 30,
                                            ),
                                            icon: Icon(Icons.remove, size: 16),
                                          ),
                                          Text(
                                            "1",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          IconButton(
                                            onPressed: () {},
                                            padding: EdgeInsets.zero,
                                            constraints: BoxConstraints(
                                              minHeight: 30,
                                              minWidth: 30,
                                            ),
                                            icon: Icon(Icons.add, size: 16),
                                          ),
                                        ],
                                      ),
                                    ),
                                    TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        "REMOVE",
                                        style: TextStyle(
                                          color: Colors.red,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: screenWidth * 0.03),
              Card(
                elevation: 2,
                margin: EdgeInsets.zero,
                child: Padding(
                  padding: EdgeInsets.all(screenWidth * 0.03),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            "assets/images/mouse.jpg",
                            width: screenWidth * 0.22,
                            height: screenWidth * 0.22,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(width: screenWidth * 0.03),

                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Mouse",
                                  style: TextStyle(
                                    fontSize: screenWidth * 0.045,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  "₹900",
                                  style: TextStyle(
                                    fontSize: screenWidth * 0.04,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 5),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                      size: 18,
                                    ),
                                    SizedBox(width: 4),
                                    Text("2.5"),
                                  ],
                                ),
                                SizedBox(height: 5),
                                Text(
                                  "Free Delivery",
                                  style: TextStyle(
                                    color: Colors.green,
                                    fontSize: 13,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      height: 32,
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Colors.black),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Row(
                                        children: [
                                          IconButton(
                                            onPressed: () {},
                                            padding: EdgeInsets.zero,
                                            constraints: BoxConstraints(
                                              minWidth: 30,
                                              minHeight: 30,
                                            ),
                                            icon: Icon(Icons.remove, size: 16),
                                          ),

                                          Text(
                                            "1",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          SizedBox(width: 5),
                                          IconButton(
                                            onPressed: () {},
                                            padding: EdgeInsets.zero,
                                            constraints: BoxConstraints(
                                              minHeight: 30,
                                              minWidth: 30,
                                            ),
                                            icon: Icon(Icons.add, size: 16),
                                          ),
                                        ],
                                      ),
                                    ),
                                    TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        "REMOVE",
                                        style: TextStyle(
                                          color: Colors.red,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: screenWidth * 0.04),

              Card(
                elevation: 2,
                margin: EdgeInsets.zero,
                child: Padding(
                  padding: EdgeInsets.all(screenWidth * 0.04),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Price details",
                        style: TextStyle(
                          fontSize: screenWidth * 0.045,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Price (2 items-)"),
                          Text(
                            "₹70,900",
                            style: TextStyle(color: Colors.green),
                          ),
                        ],
                      ),

                      SizedBox(height: 12),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Delivery"),
                          Text(
                            "Free",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Divider(height: 25),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Amount payable",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: screenWidth * 0.04,
                            ),
                          ),
                          Text(
                            "₹70,900",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: screenWidth * 0.04,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 12),
                      const Text(
                        "You will save ₹1,000 on this order",
                        style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: screenWidth * 0.04),

              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Text(
                    "CONTINUE",
                    style: TextStyle(
                      fontSize: screenWidth * 0.045,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
