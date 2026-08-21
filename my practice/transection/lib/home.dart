import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade50,
      body: SafeArea(child: Padding(padding: EdgeInsets.all(20),
      child: SingleChildScrollView(
child: Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Row(
mainAxisAlignment: MainAxisAlignment.start,
children: [
  Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text("2546788",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 26),),
      Text("Avcailable balance",style: TextStyle(fontSize: 20,),)
    ],
  ),
SizedBox(width: 90,),
  Icon(Icons.notifications,size: 30,),
  SizedBox(width: 10,),
  CircleAvatar(
  radius: 20,
    child: 
  Icon(Icons.person,size: 30,)
  ),
],
    ),

    SizedBox(height: 40,),


    Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [


        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
         Container(
          height: 45,
          width: 45,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color.fromARGB(255, 101, 167, 221),
          ),
          child: Icon(Icons.send,size: 20,),
         ),
         SizedBox(height: 10,),
         Text("send",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
      ],
    ),
  



// next row

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
         Container(
          height: 45,
          width: 45,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color.fromARGB(255, 101, 167, 221),
          ),
          child: Icon(Icons.request_page,size: 20,),
         ),
         SizedBox(height: 10,),
         Text("Requist",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
      ],
    ),
//next


        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
         Container(
          height: 45,
          width: 45,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color.fromARGB(255, 101, 167, 221),
          ),
          child: Icon(Icons.balance,size: 20,),
         ),
         SizedBox(height: 10,),
         Text("loan",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
      ],
    ),
// next
 Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
         Container(
          height: 45,
          width: 45,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color.fromARGB(255, 101, 167, 221),
          ),
          child: Icon(Icons.send,size: 20,),
         ),
         SizedBox(height: 10,),
         Text("send",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
      ],
    ),
  ],
      ),

      //rECENT

      SizedBox(height: 35,),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("recent Transections",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
          Text("See all",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)
        ],
      ),

      SizedBox(height: 20,),

      //3

      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 45,
            width: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromARGB(255, 248, 204, 204)
            ),
            padding:  EdgeInsets.all(10),
            child: Text("All",style: TextStyle(fontSize: 20),),
          ),
SizedBox(width: 30,),
           Container(
            height: 45,
            width: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Colors
            ),
            padding:  EdgeInsets.all(10),
            child: Text("income",style: TextStyle(fontSize: 20),),
          ),
          SizedBox(width: 40,),

           Container(
            height: 45,
            width: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromARGB(255, 248, 204, 204)
            ),
            padding:  EdgeInsets.all(10),
            child: Text("Expences",style: TextStyle(fontSize: 20),),
          )
        ],
      )
      
      ],),
      )),
      ),
      );
    
  }
}