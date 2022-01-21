import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
class SoundsBirds extends StatefulWidget {
  @override
  _SoundsBirdsState createState() => _SoundsBirdsState();
}
class _SoundsBirdsState extends State<SoundsBirds> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: Column(
  crossAxisAlignment: CrossAxisAlignment.stretch,
  children: [
    Expanded(
      child: GestureDetector(
        onTap: (){
          AudioCache player = AudioCache();
          player.play("sounds/waterfall.wav");
        },
        child: Container(
          alignment: Alignment.center,
          color: Colors.blue,
          child: Text("Waterfall",
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
            ),),
        ),
      ),
    ),
    Expanded(
      child: GestureDetector(
        onTap: (){
          AudioCache player = AudioCache();
          player.play("sounds/bird.wav");
        },
        child: Container(
          alignment: Alignment.center,
          color: Colors.deepOrange,
          child: Text("Birds",
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
            ),),
        ),
      ),
    ),
    Expanded(
      child: GestureDetector(
        onTap: (){
          AudioCache player = AudioCache();
          player.play("sounds/wind.wav");
        },
        child: Container(
          alignment: Alignment.center,
          color: Colors.purple,
          child: Text("Wind",
          style: TextStyle(
            fontSize: 30,
            color: Colors.white,
          ),
          ),
        ),
      ),
    ),
  ],
),
    );
  }
}
