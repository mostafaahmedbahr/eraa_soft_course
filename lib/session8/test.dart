import 'package:eraa_soft_course/session8/service/cache/keys.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
class CounterTest extends StatefulWidget {
  // Shift + f6 to rename
  @override
  _CounterTestState createState() => _CounterTestState();
}
class _CounterTestState extends State<CounterTest> {
  int count=0;
  int newCounter;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("this is stateManagement session"),
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
            CircleAvatar(
              radius: 50,
              child: Text("$count",
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),),
            ),
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
                      color: Colors.black,
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
                      color: Colors.black,
                    ),),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 60,
                  width: 150,
                  child:  ElevatedButton(
                    onPressed: (){
                      setState(() {
                        count=0;
                      });
                    },
                    child: Text("Reset",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                      ),),
                  ),
                ),
                SizedBox(width: 10,),
                Container(
                  height: 60,
                  width: 150,
                  child:  ElevatedButton(
                    onPressed: ()async{
                      SharedPreferences prefs =await SharedPreferences.getInstance();
                      prefs.setInt(MY_CACHE_COUNTER, count);
                      print(prefs.getInt("myCount"));

                      setState(() {
                        newCounter== prefs.getInt("myCount");

                      });
                    },
                    child: Text("Save",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                      ),),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
