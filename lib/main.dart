import 'package:eraa_soft_course/session10/bmi_with_bloc/cubit/cubit.dart';
 import 'package:eraa_soft_course/session12/cubit/cubit.dart';
import 'package:eraa_soft_course/work_shop_2/dio_helper/dio_helper.dart';
  import 'package:eraa_soft_course/session13/bloc/chat/cubit.dart';
import 'package:eraa_soft_course/session13/bloc/register/cubit.dart';
    import 'package:eraa_soft_course/work_shop_1/bloc/cubit.dart';
  import 'package:eraa_soft_course/work_shop_2/bloc/cubit.dart';
import 'package:eraa_soft_course/work_shop_2/views/first_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';

void main() async{

  // await Hive.init("");
  // await Hive.openBox("student");
  // final myBox =Hive.box("student");
  // await myBox.put("name", "mostafa");
  // print(myBox.get("name"));


  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  //DioHelper.int();
 // DioHelper.int();
  DioHelper.int();
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MultiBlocProvider(
        providers: [
          BlocProvider(create:(context)=>BmiCubit(),),
          BlocProvider(create: (context)=>PokeMonCubit()),
          BlocProvider(create: (context)=>RegisterCubit()),
          BlocProvider(create: (context)=>ChatCubit()..receiveMessage()),
          BlocProvider(create: (context)=>NewsCubit()..getSportData()..getBusinessData()..getHealthData()..getScienceData()),
          BlocProvider(create: (context)=>CurrencyCubit()),

        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: CurrencyScreen(),
        ),
      );
  }
}

