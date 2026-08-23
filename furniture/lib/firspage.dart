import 'package:flutter/material.dart';
import 'package:furniture/widgets/furniture_images1.dart';

class First_Page extends StatelessWidget {
  const First_Page({super.key});

  @override
  Widget build(BuildContext context) {

    // MediaQuery
    final screen = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color(0xffF7F1E8),
     body: SafeArea(child: Padding(padding: EdgeInsets.all(2),
     
     child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

// furniture image

SizedBox(
height: screen.height * 0.50,
width: double.infinity,

child: PageView(
  children: [
    Furnitureimages(
      imagePath: ("assets/images/chair.png"),
    ),
 Furnitureimages(
      imagePath: ("assets/images/chair2.png"),
    ),
     Furnitureimages(
      imagePath: ("assets/images/bed.png"),
    ),
  ],
),
),


// next

SizedBox(height: 20,),
Padding(padding: EdgeInsets.all(20),child: Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
Text("Discover",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,),),
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
      SizedBox(height: 12,),
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
SizedBox(height: 20,),


//next button

  ],
),
),
      ],
     ),
     )),
    );
  }
}