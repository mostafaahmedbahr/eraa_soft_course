import 'package:eraa_soft_course/session10/bmi_with_bloc/cubit/cubit.dart';
import 'package:eraa_soft_course/session10/bmi_with_bloc/cubit/states.dart';
import 'package:eraa_soft_course/session10/bmi_with_bloc/result_screen.dart';
import 'package:eraa_soft_course/session7/bmi/result_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class BmiFirstScreen extends StatefulWidget {
  @override
  State<BmiFirstScreen> createState() => _BmiFirstScreenState();
}

class _BmiFirstScreenState extends State<BmiFirstScreen> {
  var firstValue ="Kg";
  var firstHeight ="Cm";
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BmiCubit,BmiStates>(
      listener: (context,state){},
      builder: (context,state){
        var cubit = BmiCubit.get(context);
        return Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.black,
            elevation: 0,
            actions: [
              IconButton(onPressed: (){},
                  icon:Icon(Icons.alarm),
              ),
            ],
            leading: Icon(Icons.menu),
          ),
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("BMI Calculator",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),),
                SizedBox(height: 20,),
                Text("Gender",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // Male
                    Expanded(
                      child: Container(
                        color: Colors.white,
                        child: Column(
                          children: [
                            Container(
                              height: 100,
                                child: Image.network("https://image.freepik.com/free-icon/important-person_318-10744.jpg")),
                            Text("MALE",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 20,),
                    Expanded(
                      child: Container(
                      color: Colors.white,
                      child: Column(
                        children: [
                          Container(
                              height: 100,
                              child: Image.network("https://image.freepik.com/free-icon/important-person_318-10744.jpg")),
                          Text("FEMALE",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),),
                        ],
                      ),
                    ),
                    ),
                  ],
                ),
                Text("Weight",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                // weight
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconButton(
                            onPressed: (){
                              cubit.minusWeight();
                            },
                            icon: Icon(Icons.remove,),
                          ),
                          Text("${cubit.weightValue}",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),),
                          IconButton(
                            onPressed: (){
                              cubit.addWeight();
                            },
                            icon: Icon(Icons.add,),
                          ),
                        ],
                      ),
                    ),
                    ),
                    SizedBox(width: 20,),
                    Expanded(
                      child: Container(
                        color: Colors.white,
                        child: Center(
                          child: DropdownButton(
                            items: <String>[
                              "Kg",
                              "G"
                            ].map<DropdownMenuItem<String>>((String value){
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                             value: firstValue,
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                            onChanged: (value){
                               setState(() {
                                 firstValue=value;
                               });
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                // height
                Text("Height",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        color: Colors.white,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            IconButton(
                              onPressed: (){
                                cubit.minusHeight();
                              },
                              icon: Icon(Icons.remove,),
                            ),
                            Text("${cubit.heightValue}",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),),
                            IconButton(
                              onPressed: (){
                                cubit.addHeight();
                              },
                              icon: Icon(Icons.add,),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 20,),
                    Expanded(
                      child: Container(
                        color: Colors.white,
                        child: Center(
                          child: DropdownButton(
                            items: <String>[
                              "Cm",
                              "M"
                            ].map<DropdownMenuItem<String>>((String value){
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                            value: firstHeight,
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                            onChanged: (value){
                              setState(() {
                                firstHeight=value;
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                // age
                Text("Age",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        onPressed: (){
                          cubit.minusAge();
                        },
                        icon: Icon(Icons.remove,),
                      ),
                      Text("${cubit.age}",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),),
                      IconButton(
                        onPressed: (){
                          cubit.addAge();
                        },
                        icon: Icon(Icons.add,),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 40,),

                // الزرار
                Container(
                  width: double.infinity,
                  height: 60,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                    ),
                      onPressed: (){
                      cubit.buttonFun1();
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context)=>ResultBmiScreen()));
                      },
                      child: Text("Calculate",
                      style: TextStyle(
                        fontSize: 30,
                      ),),
                  ),
                ),


              ],
            ),
          ),
        );
      },

    );
  }
}
