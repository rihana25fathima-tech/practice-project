import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 231, 218, 222),
        body: SafeArea(child: Padding(
          padding:EdgeInsets.all(18),
           child: Column(
            children: [

              //header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  [
                  CircleAvatar(
                    child: Icon(Icons.person,size: 30,),
                  ),
                  Icon(Icons.search,size: 30,),
                ],
              ),
SizedBox(height: 20,),

//main content

              Column(  
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Hi Abby coopper",style: TextStyle(
                      fontSize: 22,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),),
                    SizedBox(height: 10,),
                    Text("How are you today?",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35),),
                    SizedBox(height: 30,),
                    Text("Your current policy",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                    SizedBox(height: 10,),
          //card
                    Card(
                      child: Padding(padding: EdgeInsets.all(20),
                      child :Column(children: [
                       Row(children: [
                        CircleAvatar(
                        backgroundColor: Colors.lightGreen,
                        child: Icon(Icons.health_and_safety,size: 25,
                        color: const Color.fromARGB(255, 60, 118, 62),),
                      ),
                      SizedBox(width: 15,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Hmo",
                          style: TextStyle(
                                  color: Colors.grey,
                                ),
                          ),
                          SizedBox(height: 5,),
                          Text("Blucare Essential",
                          style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ],
                      ),
                          Spacer(),
                          Row(children: [
                          Icon(Icons.circle,size: 10,color: Colors.green,),
                          SizedBox(width: 4,),
                          Text("Active"),
                          ],
                          ),
                       ],
                       ),
                      //insise card
             SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        
                        Column(
                      
                         children: [
                          Text("Pay"),
                          Text("98"),
                         ],
                        ),
                        Column(
                        children: [
                          Text("Expire in"),
                          Text("30 days")
                        ],
                        ),
                        Column(
                          children: [
                            Text("Revenle"),
                            Text("off"),
                          ],
                        )
                      ],                      
                      )
                        ]
                      ),
                        ),
                    ),

                    //card kayinjtt

SizedBox(height: 20,),
Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    Text("Poly notification",style: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 28,
    ),),
    Text("See all",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
  ],
    ),
    SizedBox(height: 10,),
    Card(
      elevation: 2,
  child:Padding(padding: EdgeInsets.all(20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Appointments",style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.bold,
            ),),
            Icon(Icons.arrow_forward_ios,size: 16,),
          ],
        ),
        SizedBox(height: 10,),
        Text("your anuual checkep",),
      ],
    ),
    )
    ),

    Card(
      elevation: 7,
       child: Padding(padding: EdgeInsets.all(20),
       child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Card details"),
              Icon(Icons.arrow_forward_ios),
            ],
          ),
          Text("Didital is card is ready")
        ],

       ),
       ),
    ),
    //button
    SizedBox(height: 40,),
Center(
    child: ElevatedButton(onPressed: (){},
    child: Text("how can i help?"),
    )
)
  ],
)
                      ],
                      ),
            
                      ),
                    ),
                  bottomNavigationBar:Container(
                    height: 50,
                    margin: EdgeInsets.symmetric(
                      horizontal: 100,
                      vertical: 15,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white,
                    ),
                
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
 Icon(Icons.home),
                      Icon(Icons.description),
                      Icon(Icons.calendar_month),
                      ],
                    ),
                  )
                  
                    );
                    
                

                
            
              
  
           
  
  }
}