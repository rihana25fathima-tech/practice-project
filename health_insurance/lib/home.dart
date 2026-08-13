import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(child: Padding(padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 25,
            backgroundColor: Colors.green.shade100,
            child: Icon(Icons.person,
            color: Colors.green,
            size: 30,),
          ),
         SizedBox(height: 20,),
         Text("Hi Abby cooper,",
         style: TextStyle(fontSize:20),),
         SizedBox(height: 15,),
         Text("How are you today?",
         style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
         SizedBox(height: 20,),
         Text("Your current policy",
         style: TextStyle(fontWeight: FontWeight.bold,
         fontSize: 20),),

         Container(
          width: double.infinity,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: const Color.fromARGB(213, 229, 123, 123),
            borderRadius: BorderRadius.circular(17),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 18,
                    backgroundColor: const Color.fromARGB(255, 71, 193, 75),
                    child: Icon(Icons.favorite,
                    color: Colors.green,),
                  ),
                  SizedBox(width: 10,),
       
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Text("HMO",
                  style: TextStyle(color: Colors.grey,fontSize: 15),),
                  SizedBox(height: 6,),
                  Text("Blue care Essential",
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                    ],
                  ),
                 Spacer(),
                 Row(
                  children: [
                    Icon(Icons.circle,
                    color: const Color.fromARGB(137, 14, 77, 16),
                    size: 8,),

                    SizedBox(width: 5,),
                    Text("Active",
                    style: TextStyle(
                                color: Colors.green,
                                fontSize: 12,
                              ),
                    )
                  ],
                 ),
                ],
              ),

              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("pay",style: TextStyle(
                                color: Colors.grey,
                                fontSize: 15,
                              ),),
                   Text("165",
                   style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                   ),
                  ],),
                   
                   Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("pay",style: TextStyle(
                                color: Colors.grey,
                                fontSize: 15,
                              ),),
                   Text("165",
                   style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                   ),
                  ],),

                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("pay",style: TextStyle(
                                color: Colors.grey,
                                fontSize: 15,
                              ),),
                   Text("165",
                   style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                   ),
                  ],),

                ],
              )
            ],
          ),
         ),

         SizedBox(height: 20,),
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("poly notification",
            style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 19,
          ),
            ),

          Text("See all",
            style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 19,
            color: Colors.blue
          ),
            ),
          ],
         ),

         SizedBox(height: 18,),
            




Container(
  width: double.infinity,
  padding: const EdgeInsets.all(14),
  decoration: BoxDecoration(
    color: Colors.blue,
    borderRadius: BorderRadius.circular(15),
  ),
  child: Row(
    children: [
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Appointments",
              style: TextStyle(
                color: Colors.white70,
                fontSize: 11,
              ),
            ),
            const SizedBox(height: 4),
            const Text(
              "Your free annual check-up is in 2 days.",
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
      const Icon(
        Icons.chevron_right,
        color: Colors.white,
      ),
    ],
  ),
),

const SizedBox(height: 10),

Container(
  width: double.infinity,
  padding: const EdgeInsets.all(14),
  decoration: BoxDecoration(
    color: Colors.blue,
    borderRadius: BorderRadius.circular(15),
  ),
  child: Row(
    children: [
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Appointments",
              style: TextStyle(
                color: Colors.white70,
                fontSize: 11,
              ),
            ),
            const SizedBox(height: 4),
            const Text(
              "Your free annual check-up is in 2 days.",
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
      const Icon(
        Icons.chevron_right,
        color: Colors.white,
      ),
    ],
  ),
),
            
            
          
          
         
        ],
        
        
      )

      )),
    );

  }
}