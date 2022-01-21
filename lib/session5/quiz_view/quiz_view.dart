import 'package:eraa_soft_course/session5/models/data.dart';
import 'package:eraa_soft_course/session5/models/questions.dart';
import 'package:flutter/material.dart';
class QuizView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(sportsQuestion[1].text,
                    style: TextStyle(
                      fontSize: 40,
                    ),),
                    color: Colors.yellowAccent,
                    height: 400,
                    width: 400,
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Container(
                      height: 80,
                      width: 120,
                      color: Colors.white,
                      child: Center(
                        child: Text("0/12",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: 60,
               width: double.infinity,
              child: RaisedButton(
                color: Colors.green,
                  onPressed: (){},
                child: Text("True",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),),
              ),
            ),
            Container(
              height: 60,
              width: double.infinity,
              child: RaisedButton(
                color: Colors.red,
                onPressed: (){},
                child: Text("False",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
