import 'package:flutter/material.dart';

class Catagory extends StatelessWidget {
  final IconData icon;
  final String titile;

  const Catagory({super.key, required this.icon, required this.titile});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleAvatar(radius: 22, child: Icon(icon,size: 22,)),

          SizedBox(height: 5),
          Text(titile,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 12,
          ),
          ),
        ],
      ),
    );
  }
}
