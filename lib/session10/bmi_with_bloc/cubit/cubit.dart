import 'dart:math';

import 'package:eraa_soft_course/session10/bmi_with_bloc/cubit/states.dart';
import 'package:eraa_soft_course/session10/bmi_with_bloc/result_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BmiCubit extends Cubit<BmiStates>{
  BmiCubit() : super(initialState());

  static BmiCubit get(context)=>BlocProvider.of(context);

  int weightValue=55;
  int heightValue=170;
  int age =25;
  double result=0;

  void addWeight(){
    weightValue++;
    emit(weightAddState());
  }
  void minusWeight(){
    weightValue--;
    emit(weightMinusState());
  }

  void addHeight(){
    heightValue++;
    emit(heightAddState());
  }
  void minusHeight(){
    heightValue--;
    emit(heightMinusState());
  }

  void addAge(){
    age++;
    emit(ageAddState());
  }
  void minusAge(){
    age--;
    emit(ageMinusState());
  }

  void buttonFun1(){
     result = weightValue/pow(heightValue/100, 2);
    emit(resultState());
  }

  void buttonFun2(){
    result = 0;
    emit(resultState2());
  }
}

