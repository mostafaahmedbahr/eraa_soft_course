import 'package:bloc/bloc.dart';
import 'package:eraa_soft_course/session12/cubit/state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PokeMonCubit extends Cubit<PokeMonStates>{

  PokeMonCubit() : super(PokeModInitialState());

  static PokeMonCubit get(context)=>BlocProvider.of(context);
}