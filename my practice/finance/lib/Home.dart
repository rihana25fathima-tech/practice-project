// ignore: file_names
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child : SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              //top section
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CircleAvatar(child: Icon(Icons.person, size: 30)),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello Rihana",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(height: 3),
                      Text(
                        "Welcome back",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(width: 5),
                  Row(children: [Icon(Icons.notifications)]),
                ],
              ),
              SizedBox(height: 20),

              // box neela
              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: const Color.fromARGB(255, 28, 105, 239),
                ),
                padding: EdgeInsets.all(14),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Available Balance",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "567899.00",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 28,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 45),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 45,
                              width: 45,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),

                                color: Colors.white,
                              ),
                              child: Icon(Icons.add, size: 30),
                            ),
                            SizedBox(width: 8),
                            Text(
                              "Details",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                            Spacer(),
                            Text(
                              "08/20",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              // containerinte shesham
              SizedBox(height: 50),
              // Column(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              Row(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color.fromARGB(255, 221, 113, 240),
                          ),
                          child: Icon(Icons.telegram, size: 35),
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Transfer",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "1236,00",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  // next row
                  SizedBox(width: 15),

                  Expanded(
                    child: Row(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color.fromARGB(255, 109, 236, 130),
                          ),
                          child: Icon(Icons.telegram, size: 35),
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Request",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "4000,00",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              //SEND
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Send to",
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "view all  >",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: 15),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    person("Hena", Icons.person),
                    person("Hena", Icons.person),
                    person("Hena", Icons.person),
                    person("Hena", Icons.person),
                    person("Hena", Icons.person),

                    person("Hena", Icons.person),
                    person("Hena", Icons.person),
                    person("Hena", Icons.person),
                  ],
                ),
              ),

          
        SizedBox(height: 30,),

        // transiction
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Transection",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),

            Text(
              "today  >",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),

        //container
        SizedBox(height: 20),

        Container(
          height: 60,
          width: double.infinity,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.grey.shade400,
          ),
          child: Row(
            children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child:clip
                    child: Image.asset("assets/images/udamy.jpg",fit: BoxFit.cover,),
                  ),
                ],
              ),

              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                      children: [
                        Text("Udemy",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
                      SizedBox(height: 6,),
                      
                        Text("Udemy",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
                      ],
                        )
                      ],
                  ),
                  SizedBox(width: 30,),
                   Row(
                    children: [ 
                      Text("5677889"),
                    ],
                   ),
                ],
              )
            
          ),
                ],
        ),
            ],
      ),
      ),
        ),
      ),
      );
  
  }

  Widget person(String name, IconData icon) {
    return Container(
      width: 70,
      child: Column(
        children: [
          CircleAvatar(
            radius: 28,
            backgroundColor: Colors.grey.shade200,
            child: Icon(Icons.person, size: 30, color: Colors.grey),
          ),

          SizedBox(height: 6),
          Text(
            name,
            style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
          ),
        Icon(
  icon,
  size: 30,
  color: Colors.grey,
),

        ],
      ),
    );
  }
}
