import 'package:flutter/material.dart';
class Ui extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.blue[200],
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal:20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                 ClipRRect(
                   borderRadius: BorderRadius.circular(20),
                     child: Image.asset("assets/images/ff.jpg"),
                 ),
                Text("Track your work.",
                  style:TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ) ,),
                Text("Get results.",
                  style:TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ) ,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 5,
                      backgroundColor: Colors.black,
                    ),
                    SizedBox(width: 7,),
                    CircleAvatar(
                      radius: 5,
                      backgroundColor: Colors.grey[600],
                    ),
                    SizedBox(width: 7,),
                    CircleAvatar(
                      radius: 5,
                      backgroundColor: Colors.grey[600],
                    ),
                    SizedBox(width: 7,),
                    CircleAvatar(
                      radius: 5,
                      backgroundColor: Colors.grey[600],
                    ),
                  ],
                ),
                Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  child: Text("Ok, go it ",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
