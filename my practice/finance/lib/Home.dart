import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 209, 195, 194),
    
      body: SafeArea(child: Padding(padding: EdgeInsets.all(20),
      child: SingleChildScrollView(
      child: Column(
        
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.person,size: 40,),
              Icon(Icons.search,size: 30,),
            ],
          ),
             
    
            SizedBox(height: 25,),
            Text("Hi Rihana fathima",style: TextStyle(color: Colors.grey,fontSize: 20,fontWeight: FontWeight.bold),),
            Text("How are you today?",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
             SizedBox(height: 40,),
             Text(" current pYourolicy",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),

SizedBox(height: 15,),
// container

Container(
  padding: EdgeInsets.all(18),
  
  width: double.infinity,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(20),
    color: const Color.fromARGB(255, 225, 214, 214)
  ),
  
  child: Column(children: [
  //top 

  Row(
    children: [
      CircleAvatar(
        backgroundColor: Colors.green,
        child: Icon(Icons.health_and_safety,color: Colors.greenAccent,),
      ),
       SizedBox(width: 20,),

Expanded(
  child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        
          Text("HMO"),
          Text("BlueCare Essential",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
        ],
       ),
),


SizedBox(width: 60,),
       Icon(Icons.circle,size: 10,color: Colors.green,),
       SizedBox(width: 6,),
       Text("Active"),
    ],
  ),
// BOTTOM
SizedBox(height: 25,),
  Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
children: [
  Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text("Pay",style: TextStyle(fontWeight: FontWeight.bold),),
      Text("165/m",style: TextStyle(fontWeight:FontWeight.bold,fontSize:20,color: const Color.fromARGB(255, 8, 138, 245)),),
    ],
  ),
    Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text("Expected by",style: TextStyle(fontWeight: FontWeight.bold),),
      Text("30 days",style: TextStyle(fontWeight:FontWeight.bold,fontSize:20,color: const Color.fromARGB(255, 8, 138, 245)),),
    ],
  ),
   Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text("Renewal",style: TextStyle(fontWeight: FontWeight.bold),),
      Text("off ",style: TextStyle(fontWeight:FontWeight.bold,fontSize:20,color: const Color.fromARGB(255, 16, 131, 225)),),
    ],
  ),
],
  )
  ],
  ),
),

SizedBox(height: 30,),
Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
   children: [
    Text("Policy notification",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
    Text("See all",style: TextStyle(fontSize: 20,color: Colors.blue,fontWeight: FontWeight.bold),)
   ],
),
SizedBox(height: 17,),
Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white
      ),
      width: double.infinity,
      padding: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Appoinments",style: TextStyle(fontSize: 15),),
          Text(" Your free anual check up is in 2 days",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),

          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(Icons.arrow_forward_ios,size: 20,)
            ],
          ),
        ],
      ),
    
    )
  ],
),


// next 
SizedBox(height: 20,),
Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white
      ),
      width: double.infinity,
      padding: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Appoinments",style: TextStyle(fontSize: 15),),
          Text(" Your free anual check up is in 2 days",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),

          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(Icons.arrow_forward_ios,size: 20,)
            ],
          ),
        ],
      ),
    
    )
  ],
),
SizedBox(height: 30,),
//how can help
Center(
  child: Container(
    padding: EdgeInsets.symmetric(
      horizontal: 14,
      vertical: 9,
    ),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(25),
    ),
    child: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(Icons.auto_awesome,size: 15,color: const Color.fromARGB(255, 14, 89, 143),),
        SizedBox(width: 5,),
        Text("hOW CAN I HELP?")
      ],
    ),
  ),
),
        ],
          ),
  ),
),
      ),

bottomNavigationBar: BottomNavigationBar(
  selectedItemColor: Colors.orange,
  unselectedItemColor: Colors.grey,
  items:const [
BottomNavigationBarItem(icon: Icon(Icons.home,),label: "home"),
BottomNavigationBarItem(icon: Icon(Icons.person ),label: "Account"),
  ]),
      );



  }
}