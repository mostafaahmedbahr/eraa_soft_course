import 'package:flutter/material.dart';
class ResultScreen extends StatelessWidget {
  final int height;
  final int weight;
  final int result;

  const ResultScreen({
    this.height,
    this.weight,
  this.result,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Result Screen",
          style: TextStyle(
            color: Colors.pinkAccent,
            fontSize: 25,
          ),),
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon:Icon(Icons.arrow_back),
        color: Colors.black,),
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Text("Your BMI IS ${result.toString()}",
        style: TextStyle(
          fontSize: 40,
          fontWeight: FontWeight.bold,
        ),),
      ),
    );
  }
}
