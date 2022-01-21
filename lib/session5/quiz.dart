import 'package:eraa_soft_course/session5/components/quiz_button.dart';
import 'package:flutter/material.dart';
class Quiz extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text("Please Select Category",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),),
          Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: NetworkImage("https://image.freepik.com/free-vector/people-connecting-puzzle-pieces-background_23-2148098046.jpg"),

              ),
            ),
          ),
          QuizButton(
            color:Colors.green,
            name: "Sports",
          ),
          QuizButton(
            name: "Political",
            color: Colors.red,
          ),
          QuizButton(
            name: "Relegional",
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}
