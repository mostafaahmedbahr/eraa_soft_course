
import 'package:eraa_soft_course/session13/enum/toast_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ToastConfig
{
  static showToast({
    @required String msg,
    @required ToastState toastState,
}) => Fluttertoast.showToast(
      msg: msg,
    toastLength: Toast.LENGTH_LONG,
    gravity: ToastGravity.BOTTOM,
    timeInSecForIosWeb:5,
    fontSize: 16,
    backgroundColor: chooseToastColor(toastState),
    textColor: Colors.white,
  );
}

Color chooseToastColor(ToastState state)
{
      Color color;
    switch(state)
    {
      case ToastState.Error:
        color = Colors.red;
        break;
      case ToastState.Warning:
        color = Colors.amber;
        break;
      case ToastState.Success:
        color = Colors.green;
        break;
    }

}