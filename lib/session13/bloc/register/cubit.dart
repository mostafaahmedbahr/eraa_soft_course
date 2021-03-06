import 'package:eraa_soft_course/session13/bloc/register/state.dart';
 import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterCubit extends Cubit<RegisterStates>{

  RegisterCubit() : super(RegisterInitialState());

  static RegisterCubit get(context)=>BlocProvider.of(context);

  userRegister(String email,String password)
  {
    emit(RegisterLoadingState());
    FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
      password: password,
    ).then((value){
          emit(RegisterSuccessState());
    }).catchError((error){
      print(error);
      emit(RegisterErrorState(error));
    });

  }
}