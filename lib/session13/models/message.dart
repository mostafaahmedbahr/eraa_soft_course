import 'package:flutter/cupertino.dart';

class Message
{
    String text;
    DateTime time;
    String sender;

    Message({@required this.text,
    @required this.time,
    @required this.sender,
    });

    Map<String,dynamic> toMap()
    {
      return
        {
          "time":time,
          "text":text,
          "sender":sender,
        };
    }
}