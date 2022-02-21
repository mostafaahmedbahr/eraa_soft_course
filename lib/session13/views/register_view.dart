 import 'package:eraa_soft_course/session13/bloc/register/cubit.dart';
import 'package:eraa_soft_course/session13/bloc/register/state.dart';
import 'package:eraa_soft_course/session13/core/toast/toast.dart';
import 'package:eraa_soft_course/session13/core/utils/utils_navigator.dart';
import 'package:eraa_soft_course/session13/enum/toast_state.dart';
import 'package:eraa_soft_course/session13/views/chat_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class RegisterView extends StatelessWidget {
  var emailCon = TextEditingController();
  var passCon = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterCubit,RegisterStates>(
      listener: (context,state){
        if(state is RegisterSuccessState)
        {

            ToastConfig.showToast(
              msg: "Done",
              toastState: ToastState.Success,
            );
          AppNav.customNavigator(
              context: context,
              screen: ChatView(),
              finish: true,
          );
        }
        if(state is RegisterErrorState)
          {
            ToastConfig.showToast(
                msg: state.error.toString(),
                toastState: ToastState.Error,
            );
          }
      },
      builder: (context,state){
        var cubit = RegisterCubit.get(context);
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
          ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Image(
                    image: AssetImage("assets/images/0.png"),
                  ),
                ),
                SizedBox(height: 20,),
                Text("Welcome to our chat",
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                  ),),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextFormField(
                    controller: emailCon,
                    decoration: InputDecoration(
                      hintText: "Enter your email",
                      labelText: "Email",
                      border: OutlineInputBorder(),
                      suffixIcon: Icon(
                        Icons.mail,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextFormField(
                    controller: passCon,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter your password",
                      labelText: "password",
                      border: OutlineInputBorder(),
                      suffixIcon: Icon(
                        Icons.lock,
                      ),
                    ),
                  ),
                ),
                if(state is RegisterLoadingState)
                  const LinearProgressIndicator(),
                ElevatedButton(
                  onPressed: (){
                    // emailCon.clear();
                    // passCon.clear();
                    cubit.userRegister(
                    emailCon.text,
                        passCon.text,
                    );
                    // AppNav.customNavigator(
                    //     context: context,
                    //     screen: ChatView(),
                    //     finish: true);
                  },
                  child: Text("Register"),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
