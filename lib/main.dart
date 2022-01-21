import 'package:eraa_soft_course/session10/bmi_with_bloc/cubit/cubit.dart';
import 'package:eraa_soft_course/session10/bmi_with_bloc/first_screen.dart';
import 'package:eraa_soft_course/session2/task3.dart';
import 'package:eraa_soft_course/session2/task4.dart';
import 'package:eraa_soft_course/session2/task5.dart';
import 'package:eraa_soft_course/session2/ui_x_o.dart';
import 'package:eraa_soft_course/session3/login_ui.dart';
import 'package:eraa_soft_course/session3/payment.dart';
import 'package:eraa_soft_course/session3/profile.dart';
import 'package:eraa_soft_course/session3/sounds.dart';
import 'package:eraa_soft_course/session4/ui.dart';
import 'package:eraa_soft_course/session5/counter.dart';
import 'package:eraa_soft_course/session5/quiz.dart';
import 'package:eraa_soft_course/session5/quiz_view/quiz_view.dart';
import 'package:eraa_soft_course/session6/cubit/cubit.dart';
import 'package:eraa_soft_course/session6/market_card.dart';
import 'package:eraa_soft_course/session7/bmi/bmi_screen.dart';
import 'package:eraa_soft_course/session7/form_view/form.dart';
import 'package:eraa_soft_course/session7/islamiv_ui/islamic.ui.dart';
import 'package:eraa_soft_course/session8/media_query_test.dart';
import 'package:eraa_soft_course/session8/test.dart';
import 'package:eraa_soft_course/session9/animal_sound.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create:(context)=>BmiCubit(),),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BmiFirstScreen(),
      ),
    );
  }
}

