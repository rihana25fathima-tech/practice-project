import 'package:flutter/material.dart';

class Catagory extends StatelessWidget {
   final IconData icon;
   final String titile;


  const Catagory({
    super.key,
  required this.icon,
  required this.titile,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: 100,
    child: Column(
          children: [
            CircleAvatar(
              radius: 25,
              child: Icon(icon),
            ),

            SizedBox(height: 5,),
            Text(titile),
          ],
    )
    );
    
    
    
    // Column(
    //       children: [
    //         CircleAvatar(
    //           radius: 25,
    //           child: Icon(icon),
    //         ),

    //         SizedBox(height: 5,),
    //         Text(titile),
    //       ],
    // );
  }
}