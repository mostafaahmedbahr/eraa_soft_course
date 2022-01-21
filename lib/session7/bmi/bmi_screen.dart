import 'dart:math';
import 'package:eraa_soft_course/session7/bmi/result_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class BmiScreen extends StatefulWidget {
  @override
  _BmiScreenState createState() => _BmiScreenState();
}
class _BmiScreenState extends State<BmiScreen> {
  var heightController=TextEditingController();
  var weightController=TextEditingController();
  double height;
  double weight;
  final _formKey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(
        backgroundColor: Colors.white.withOpacity(1),
        appBar: AppBar(
          centerTitle: true,
          title: Text("BMI Calculator",
          style: TextStyle(
            color: Colors.pinkAccent,
            fontSize: 25,
          ),),
          backgroundColor: Colors.white,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(height: 100,),
                Text("BMI",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.pinkAccent,
                ),),
                Container(
                  color: Colors.grey,
                  height: 3,
                ),
                SizedBox(height: 20,),
                TextFormField(
                  controller: heightController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide:BorderSide(
                        color: Colors.pinkAccent,
                        width: 5,
                        style:BorderStyle.solid,
                      ) ,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide:BorderSide(
                        color: Colors.pinkAccent,
                        width: 2,
                        style:BorderStyle.solid,
                      ) ,
                    ),
                    focusedBorder:  OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide:BorderSide(
                        color: Colors.pinkAccent,
                        width: 2,
                        style:BorderStyle.solid,
                      ) ,
                    ),
                    labelText: "HEIGHT",
                    labelStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                    ),
                  ),
                  keyboardType:TextInputType.number,
                  validator: (value){
                    if(value.isEmpty){
                      return "please enter the height";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20,),
                TextFormField(
                  controller: weightController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide:BorderSide(
                        color: Colors.pinkAccent,
                        width: 5,
                        style:BorderStyle.solid,
                      ) ,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide:BorderSide(
                        color: Colors.pinkAccent,
                        width: 2,
                        style:BorderStyle.solid,
                      ) ,
                    ),
                    focusedBorder:  OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide:BorderSide(
                        color: Colors.pinkAccent,
                        width: 2,
                        style:BorderStyle.solid,
                      ) ,
                    ),
                    labelText: "WEIGHT",
                    labelStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                    ),
                  ),
                  keyboardType:TextInputType.number,
                  validator: (value){
                    if(value.isEmpty){
                      return "please enter the weight";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20,),
                Container(
                  width: double.infinity,
                  height: 70,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      side: BorderSide(
                        color: Colors.black,
                        width: 5,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                      onPressed: (){
                      if(_formKey.currentState.validate()){
                        height=double.parse(heightController.text);
                        weight=double.parse(weightController.text);
                        double result = weight/pow(height/100, 2);
                        Navigator.push(context,MaterialPageRoute(
                          builder: (context)=>ResultScreen(
                            height:height.round(),
                            weight: weight.round(),
                            result: result.round(),
                          ),
                        ),
                        );
                        return null;
                      }


                      },
                      child: Text("Calculate",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.pinkAccent,
                      ),),
                  ),
                ),

               ],
            ),
          ),
        ),
      ),
    );
  }
}
