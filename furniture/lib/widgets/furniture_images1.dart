import 'package:flutter/material.dart';

class Furnitureimages extends StatelessWidget {
  final String imagePath;

  const Furnitureimages({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(child: Image.asset(imagePath, fit: BoxFit.cover)),
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          child: Container(
            height: 105,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.transparent, Color(0xffF7F1E8)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
