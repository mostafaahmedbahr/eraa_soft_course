import 'package:flutter/material.dart';
class Task4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  color: Colors.red,
                  width: 100,
                  height: 100,
                ),
                Container(
                  color: Colors.blue,
                  width: 100,
                  height: 100,
                ),
              ],
            ),
          ),
         Expanded(
             child:  Row(
               mainAxisAlignment: MainAxisAlignment.spaceAround,
               children: [
                 Container(
                   color: Colors.green,
                   width: 100,
                   height: 100,
                 ),
                 Container(
                   color: Colors.brown,
                   width: 100,
                   height: 100,
                 ),
               ],
             ),
         ),
        ],
      ),
    );
  }
}
