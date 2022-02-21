import 'package:eraa_soft_course/session12/colors.dart';
import 'package:eraa_soft_course/session12/cubit/cubit.dart';
import 'package:eraa_soft_course/session12/cubit/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class PokeMonsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PokeMonCubit,PokeMonStates>(
      listener: (context,state){},
      builder: (context,state){
        return Scaffold(
          appBar: AppBar(
            title: Text("PokeMons"),
            backgroundColor: AppColor.color,
            centerTitle: true,
          ),
        );
      },

    );
  }
}
