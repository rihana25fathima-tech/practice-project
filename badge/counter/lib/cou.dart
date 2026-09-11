import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int counter = 0;
  //inc
  void increment(){
    setState(() {
      counter++;
    });
  }
  //dec
  void decrement(){
    setState(() {
      counter--;
    });
  }
void reset(){
  setState(() {
    counter = 0;
  });
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
  title: Text("Counter App"),
),
body: Center(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text("Counter value",style: TextStyle(fontSize: 20),),
      SizedBox(height: 20,),
      Text('$counter', 
      style: TextStyle(
        fontSize: 50,fontWeight: FontWeight.bold,
      ),),
      SizedBox(height: 30,),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(onPressed: () {
            decrement();
          }, child:Text('-'),),
          SizedBox(width: 20,),
          ElevatedButton(onPressed: () {
            increment();
          }, child: Text('+'),),
        ],
      ),
      SizedBox(height: 20,),
      ElevatedButton(onPressed: () {
        reset();
      }, child: Text("Reset"))
    ],
  ),
),
    );
  }
}