import 'package:flutter/material.dart';
class Xo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          children: [
            Center(
              child: Text("Click a cell when a it is your move",
                style: TextStyle(
                  fontSize: 20,
                ),),
            ),
            SizedBox(height: 20,),
            Text("Player 2 ",
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            SizedBox(height: 20,),
            //
            Padding(
              padding:EdgeInsets.symmetric(horizontal: 20),
              child:Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        border: Border.all(color: Colors.black,width: 3),
                      ),
                      height: 110,
                      width:110,
                      child: Center(
                        child: Text("O",
                          style: TextStyle(
                            fontSize: 40,
                          ),),
                      ),
                    ),
                  ),
                  SizedBox(width: 2,),
                  Expanded(
                    child:Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black,width: 3),
                      ),
                      height: 110,
                      width: 110,
                    ),),
                  SizedBox(width: 2,),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black,width: 3),
                      ),
                      height: 110,
                      width: 110,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 2,),
            Padding(padding:EdgeInsets.symmetric(horizontal: 20),
              child:Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black,width: 3),
                      ),
                      height: 110,
                      width: 110,
                    ),
                  ),
                  SizedBox(width: 2,),
                  Expanded(
                    child:Container(
                      decoration: BoxDecoration(
                        color: Colors.red,
                        border: Border.all(color: Colors.black,width: 3),
                      ),
                      height: 110,
                      width: 110,
                      child: Center(
                        child: Text("X",
                          style: TextStyle(
                            fontSize: 40,
                          ),),
                      ),
                    ),),
                  SizedBox(width: 2,),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black,width: 3),
                      ),
                      height: 110,
                      width: 110,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 2,),
            Padding(padding:EdgeInsets.symmetric(horizontal: 20),
              child:Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black,width: 3),
                      ),
                      height: 110,
                      width: 110,
                    ),
                  ),
                  SizedBox(width: 2,),
                  Expanded(
                    child:Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black,width: 3),
                      ),
                      height: 110,
                      width: 110,
                    ),),
                  SizedBox(width: 2,),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        border: Border.all(color: Colors.black,width: 3),
                      ),
                      height: 110,
                      width: 110,
                      child: Center(
                        child: Text("O",
                          style: TextStyle(
                            fontSize: 40,
                          ),),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 50,
                width: double.infinity,
                child: RaisedButton(
                  color: Colors.red,
                  onPressed:(){},
                  child: Text("Restart",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}