import 'package:flutter/material.dart';
import 'package:furniture/secopage.dart';
import 'package:furniture/widgets/furniture_images1.dart';

// ignore: camel_case_types
class First_Page extends StatelessWidget {
  const First_Page({super.key});

  @override
  Widget build(BuildContext context) {
    // MediaQuery
    final screen = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color(0xffF7F1E8),
      body: SafeArea(
        child:SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(2),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // furniture image
              SizedBox(
                height: screen.height * 0.50,
                width: double.infinity,

                child: PageView(
                  children: [
                    Furnitureimages(imagePath: ("assets/images/chair.png")),
                    Furnitureimages(imagePath: ("assets/images/chair2.png")),
                    Furnitureimages(imagePath: ("assets/images/bed.png")),
                  ],
                ),
              ),

              // next
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Discover",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 35,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "timeless ",
                          style: TextStyle(
                            fontSize: 25,
                            color: Color(0xffB88746),
                            fontWeight: FontWeight.w500,
                          ),
                        ),

                        Text(
                          " furniture",
                          style: TextStyle(
                            fontSize: 25,
                            color: Color.fromARGB(255, 20, 18, 17),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 12),
                    Text(
                      "Handcrafted pieces built with premium\n"
                      "sustainable materials for every corner\n"
                      "of your home.",
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.black54,
                        height: 1.5,
                        fontWeight: FontWeight(400),
                      ),
                    ),
                    SizedBox(height: 20),

                    //next button
                    SizedBox(
                      width: double.infinity,
                      height: 50,

                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Secound_page(),));
                        } ,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          foregroundColor: Colors.white,

                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),

                        child: Text("Next", style: TextStyle(fontSize: 14)),
                      ),
                    ),

                    SizedBox(height: 8),

                    Center(
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "Skip",
                          style: TextStyle(color: Colors.grey, fontSize: 13),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      ),
    );
  }
}
