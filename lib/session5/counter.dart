import 'package:flutter/material.dart';
class Counter extends StatefulWidget {
  @override
  _CounterState createState() => _CounterState();
}
class _CounterState extends State<Counter> {
  int count=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("this is statemangment session"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Counter",
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),),
            Text("$count",
            style: TextStyle(
              fontSize: 40,
              color: Colors.orange,
            ),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: (){
                    setState(() {
                      count++;
                    });
                  },
                  child: Text("PLUS",
                    style: TextStyle(
                      fontSize: 30,
                    ),),
                ),
                TextButton(
                    onPressed: (){
                      setState(() {
                        count--;
                      });
                    },
                    child: Text("MINUS",
                    style: TextStyle(
                      fontSize: 30,
                    ),),
                ),
              ],
            ),
            Container(
              height: 60,
              width: 150,
              child: RaisedButton(
                  onPressed: (){
                    setState(() {
                      count=0;
                    });
                  },
                child: Text("Reset",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.red,
                ),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
