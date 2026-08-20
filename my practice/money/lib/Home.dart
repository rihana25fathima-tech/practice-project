import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(237, 232, 231, 1),
      body: SafeArea(child: Padding(padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          //topbar
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                child: Icon(Icons.person,size: 24,),
              ),
              SizedBox(width: 40,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Hello Rihana",style: TextStyle(fontSize: 14),),
                  Text("Welcome back",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),),
                ],
              ),
              SizedBox(width: 90,),
              Icon(Icons.notifications,size: 20,)
            ],
          ),
SizedBox(height: 22,),
          // container blue

          Container(
            decoration: BoxDecoration(
              color: Colors.blue.shade600,
              borderRadius: BorderRadius.circular(18),
            ),
            width: double.infinity,
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Available Balance",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                SizedBox(height: 8,),
                Text("8520.00",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 20),),
                SizedBox(height: 40,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 45,
                      width: 45,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white
                      ),
                      child: Icon(Icons.add),
                    ),
                    SizedBox(width: 7,),
                    Text("Details",style: TextStyle(color: Colors.white),),
                SizedBox(width: 190,),
                Text("06/20",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                  ],
                )
              ],
            ),
          ),
SizedBox(height: 30,),
          //container kayinjtt

          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(children: [
              Container(
                      height: 45,
                      width: 45,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: const Color.fromARGB(255, 226, 155, 239)
                      ),
                      child: Icon(Icons.telegram),
                    ),
                    SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Transfer",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19,)),
                         Text("0087.00",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 14,)),
                      ],
                    )
            ],
          ),
SizedBox(width: 50,),
           Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                      height: 45,
                      width: 45,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.greenAccent,
                      ),
                      child: Icon(Icons.telegram),
                    ),
                    SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("request",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19,)),
                         Text("0087.00",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 14,)),
                      ],
                    )
            ],
          )
        ],
      ),

//send to

SizedBox(height: 50,),
Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [ 
    Text("Sendto"),
    Text("view all >")
    ],
),

Row(
  mainAxisAlignment: MainAxisAlignment.start,
  children: [
    ListView(
      scrollDirection: Axis.horizontal,
    children: [
    personimage(Icon(Icons.person,),Text("hena")),
     personimage(Icon(Icons.person,),Text("hena")),
      personimage(Icon(Icons.person,),Text("hena")),
       personimage(Icon(Icons.person,),Text("hena")),
        personimage(Icon(Icons.person,),Text("hena")),
         personimage(Icon(Icons.person,),Text("hena")),
          personimage(Icon(Icons.person,),Text("hena")),
         
  ],
)

        ],
      )],),
      ),
      ),
    );
  }

  Widget personimage(IconData icon, String text){
    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(17),
      ),
    );
    
  }
}