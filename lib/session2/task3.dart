import 'package:flutter/material.dart';
class Task3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Center(
                child: Text("child 1 ",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),),
            ),
            height: 200,
            width: 100,
            color: Colors.red,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 100,
                color: Colors.blue,
                child: Center(
                  child: Text("child 2 ",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),),
                ),
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.yellow,
                child: Center(
                  child: Text("child 3 ",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
