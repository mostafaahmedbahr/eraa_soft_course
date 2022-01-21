import 'package:flutter/material.dart';
class Task5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: Container(
              color: Colors.red,
            ),
          ),
          Expanded(
            child: Container(
              child: Image(
                image: AssetImage("assets/images/flag.jpg"),
              ),
              color: Colors.white,
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.black,
            ),
          ),
        ],
      ),


    );
  }
}
