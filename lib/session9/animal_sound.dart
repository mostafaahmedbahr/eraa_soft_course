import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class AnimalSound extends StatefulWidget {
  @override
  _AnimalSoundState createState() => _AnimalSoundState();
}

class _AnimalSoundState extends State<AnimalSound> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage("https://image.freepik.com/free-photo/ibiza-cala-salada-saladeta-balearics_79295-19284.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 400,),
              child: Container(
                alignment: Alignment.bottomCenter,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(20),
                ),
                height: 200,
                width: 200,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("Sea",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),),
                    Container(
                      height: 80,
                      child: Image(image: NetworkImage("https://image.freepik.com/free-photo/ibiza-cala-salada-saladeta-balearics_79295-19284.jpg",
                      ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: (){
                        AudioCache player = AudioCache();
                        player.play("sounds/sea.wav");
                      },
                        child: Text("Sound"),
                    )

                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
