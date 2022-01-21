import 'package:eraa_soft_course/session10/bmi_with_bloc/cubit/cubit.dart';
import 'package:eraa_soft_course/session10/bmi_with_bloc/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class ResultBmiScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BmiCubit,BmiStates>(
      listener: (context,state){},
      builder: (context,state){
        var cubit = BmiCubit.get(context);
        return  Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            elevation: 0,
            actions: [
              IconButton(
                icon:Icon(Icons.access_alarm),
                onPressed: (){},
              ),
            ],
            backgroundColor: Colors.black,
          ),
          body:Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Your BMI IS ${cubit.result.round()}",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),),
                SizedBox(height: 20,),
                Container(
                  width: double.infinity,
                  height: 60,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                    ),
                    onPressed: (){
                      cubit.buttonFun2();
                      Navigator.pop(context);
                    },
                    child: Text("Recalculate",
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
