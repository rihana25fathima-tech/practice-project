import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Details extends StatefulWidget {
  const new({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemBuilder: itemBuilder)
    );
  }
}