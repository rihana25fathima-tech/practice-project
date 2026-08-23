import 'package:flutter/material.dart';

class Secound_page extends StatefulWidget {
  const Secound_page({super.key});

  @override
  State<Secound_page> createState() => _Secound_pageState();
}

class _Secound_pageState extends State<Secound_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                // top bar
 Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Good morning,",
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.grey,
                    ),
                  ),

                  SizedBox(height: 3),

                  Text(
                    "Asha",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff29231E),
                    ),
                  ),
                ],
              ),

      Row(
                children: [

                  Container(
                    height: 40,
                    width: 40,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.notifications_none,
                      color: Color(0xff4A4038),
                    ),
                  ),
                SizedBox(width: 10),

                  const CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage(
                      "assets/images/profile.jpg",
                    ),
                  ),
                ],
              ),
            ],
          ),

              ],
            )
        
        ),

        ),
      ));
  }
}