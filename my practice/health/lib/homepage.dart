import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(218, 239, 234, 234),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //topbar
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.grey.shade300,
                    radius: 20,
                    child: Icon(Icons.person),
                  ),
                  Spacer(),
                  Icon(Icons.search, size: 30),
                ],
              ),

              SizedBox(height: 20),

              Text("Hi rihana", style: TextStyle(fontSize: 20)),
              SizedBox(height: 10),
              Text(
                "How are you today?",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 27),
              ),

              SizedBox(height: 30),

              Text(
                "Youjr current policy",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),

              SizedBox(height: 7),

              Container(
                width: double.infinity,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.green,
                          child: Icon(
                            Icons.health_and_safety,
                            size: 20,
                            color: Colors.greenAccent,
                          ),
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("HMo", style: TextStyle(fontSize: 15)),
                            SizedBox(height: 5),
                            Text(
                              "Blue care essential",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),

                        SizedBox(width: 70),
                        Icon(Icons.circle, color: Colors.green, size: 20),
                        Text("Active", style: TextStyle(fontSize: 15)),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Pay", style: TextStyle(fontSize: 15)),
                            SizedBox(height: 5),
                            Text(
                              "3454566",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: const Color.fromARGB(255, 88, 184, 232),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("exipire in", style: TextStyle(fontSize: 15)),
                            SizedBox(height: 5),
                            Text(
                              "30 days",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: const Color.fromARGB(255, 88, 184, 232),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Renewal", style: TextStyle(fontSize: 15)),
                            SizedBox(height: 5),
                            Text(
                              "off",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: const Color.fromARGB(255, 88, 184, 232),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Poly notificastion",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "see all",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: const Color.fromARGB(255, 88, 184, 232),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 30),

              Container(
                padding: EdgeInsets.all(20),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Appoinments", style: TextStyle(fontSize: 15)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Your free annual checkup in 2 days",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                        Spacer(),
                        Icon(Icons.arrow_back_ios_new_outlined),
                      ],
                    ),
                  ],
                ),
              ),
SizedBox(height: 10,),
Container(
                padding: EdgeInsets.all(20),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Card details", style: TextStyle(fontSize: 15)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Digital id card is ready i in 2 days",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                        Spacer(),
                        Icon(Icons.arrow_back_ios_new_outlined),
                      ],
                    ),
                  ],
                ),
              ),


              SizedBox(height: 40,),
              Center(child: 
              Container(
                padding: EdgeInsets.all(10),
              
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                children: [
                Icon(Icons.circle_rounded,color: const Color.fromARGB(255, 123, 121, 121),),
                SizedBox(width: 6,),
                Text("How can i help?",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)
                ],
                ),
              )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
