import 'package:bloc/bloc.dart';
import 'package:eraa_soft_course/work_shop_2/bloc/states.dart';
import 'package:eraa_soft_course/work_shop_2/dio_helper/dio_helper.dart';
import 'package:eraa_soft_course/work_shop_2/model/nodel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CurrencyCubit extends Cubit<CurrencyStates>{
  CurrencyCubit() : super(CurrencyInitialState());
  static CurrencyCubit get(context) => BlocProvider.of(context);

String dropdownvalue1;
String dropdownvalue2;
  String newValue;
  var amountCon=TextEditingController();

  var items =  ['','EGP','USD','AUD','QAR','SAR',];

  void resetValue()
  {
    amountCon.clear();
    dropdownvalue1='';
    dropdownvalue2='';
    emit(resetValueState());
  }

  CurrencyModel currency;
  void getCurrencyData({
  String from,
  String to,
    int  amount
})
  {
    //TODO: Add loading state
    DioHelper.getData(
      query: {
        "from":from,
        "amount":amount,
        "to":to,
      },
    ).then((value){
      print(value.data.toString());
      currency=CurrencyModel.fromJson(value.data);

      emit(CurrencySuccessState());
    }
    ).catchError((error)
    {
      print("errrrrrr ${error.toString()}");
    },
    );
    emit(CurrencyErrorState());
  }

}