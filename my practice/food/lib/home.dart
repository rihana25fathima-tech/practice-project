import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});




  Widget categoryItem (IconData icon,String name){
    return Container(
      margin: EdgeInsets.only(right: 15),
      width: 80,
      child: Column(children: [ 
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            color: Colors.orange.shade50,
            shape: BoxShape.circle,
          ),
          child: Icon(icon,size: 30,color: Colors.orange,),
        ),
        SizedBox(height: 5,),
        Text(name,
        style: TextStyle(fontSize: 13,
        fontWeight: FontWeight.bold),
        )
      ],),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body: SafeArea(child : SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(20),
      child: Column(
        children: [
          child:   Row(
            children: [
              Icon(Icons.location_on_outlined,size: 30,),
              SizedBox(width: 5,),
              Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                Text("Delivery to",style: TextStyle(
                  fontSize: 15,
                ),),
                 Text("Calicut,keralam ",style: TextStyle(
                  fontSize: 20,fontWeight: FontWeight.bold,
                ),),
               ],
              ),
              Spacer(),
              Icon(Icons.notifications)
            ],
          ),
          ),
        ),
      ),
      
      ),
      
          //serch_ bo)x
SizedBox(height: 30,),

Row(children: [
  Expanded(child: 
          Container(
            height: 45,
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide(color: Colors.grey),
                ),
                hintText: "Search for food ,restorents....", 
                prefixIcon: Icon(Icons.search),
                ),
                ),
              ),
  ),

  SizedBox(width: 10,),

  Container(
    height: 45,
    width: 45,
    decoration: BoxDecoration(
      border: Border.all(color: Colors.grey),
      borderRadius: BorderRadius.circular(15),
    ),
    child: Icon(Icons.tune),
  ),
        ],
            ),

// banner
SizedBox(height: 20,),
ClipRRect(
  borderRadius: BorderRadiusGeometry.circular(15),
   child:  Image.asset("assets/images/baner.jpg",fit: BoxFit.cover,width: double.infinity,height: 150,),
),

SizedBox(height: 15,),
//catagories
Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    Text("Catagories",style: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 16,
    ),),
    Text("See all",style: TextStyle(
      color: Colors.green,
      fontWeight: FontWeight.bold,
      fontSize: 16,
    ),),
  ],
),

SizedBox(height: 10,),
    SizedBox(
       height: 100,
       child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          categoryItem(Icons.local_pizza, "Pizza"),
      categoryItem(Icons.lunch_dining, "Burger"),
      categoryItem(Icons.rice_bowl, "Rice"),
      categoryItem(Icons.icecream, "Dessert"),
      categoryItem(Icons.local_drink, "Drinks"),
      categoryItem(Icons.fastfood, "Fast Food"),
        ],
          ),
    ),


    //popular res

SizedBox(height: 20,),


Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    Text("Popular Restaurants",style: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 16,
    ),),
    Text("See all",style: TextStyle(
      color: Colors.green,
      fontWeight: FontWeight.bold,
      fontSize: 16,
    ),),
  ],
),

SizedBox(height: 8,),
Row(children: [
  Expanded(child: 
Container(
 margin: EdgeInsets.only(right: 8),
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(20),
  ),

  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      ClipRRect(
        borderRadius: BorderRadiusGeometry.circular(20),
        child: 
     Image.asset("assets/images/food1.jpg",fit: BoxFit.cover,width: double.infinity,height: 100,),),
     Column(
      children: [
        Text("The food house", style: TextStyle(fontWeight: FontWeight.bold)),
        SizedBox(height: 3,),
        Text("      North indial chinees"),
      ],
        )
      ],
     ),
),
  ),

 Expanded(child: 
Container(
 margin: EdgeInsets.only(right: 8),
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(20),
  ),

  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      ClipRRect(
        borderRadius: BorderRadiusGeometry.circular(20),
        child: 
     Image.asset("assets/images/food2.jpg",fit: BoxFit.cover,width: double.infinity,height: 100,),),
     Column(
      children: [
        Text("The food house", style: TextStyle(fontWeight: FontWeight.bold)),
        SizedBox(height: 3,),
        Text("      North indial chinees"),
      ],
        )


      ],
     )
),
  ),
    ],
  ),
SizedBox(height: 10,),

Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    Text("Popular Dishes",style: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 16,
    ),),
    Text("See all",style: TextStyle(
      color: Colors.green,
      fontWeight: FontWeight.bold,
      fontSize: 16,
    ),),
  ],
),

SizedBox(height: 2,),
Row(
  children: [
    Expanded(child: Container(
      margin: EdgeInsets.only(right: 9),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
    child: Column(
      children: [
        Image.asset("assets/images/food3.jpg"),
      ],
    ), 
    ))
  ],
)



  




  

        
)







        
          );
      
        
      



  }
  }