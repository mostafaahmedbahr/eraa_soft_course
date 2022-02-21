import 'package:eraa_soft_course/session13/bloc/chat/cubit.dart';
import 'package:eraa_soft_course/session13/bloc/chat/states.dart';
import 'package:eraa_soft_course/session13/components/chat_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class ChatView extends StatefulWidget {

  @override
  State<ChatView> createState() => _ChatViewState();
}

class _ChatViewState extends State<ChatView> {
  var msgController = TextEditingController();

  @override
  void initState(){
    ChatCubit.get(context).getUserData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ChatCubit,ChatStates>(
      listener: (context,state){},
      builder: (context,state){
        var cubit = ChatCubit.get(context);
        return Scaffold(
          appBar: AppBar(
            title: Text("${cubit.userEmail}"),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              cubit.user==null ? Text("rror"):
              ChatList(messageStream: cubit.messageStream,
              userMail: cubit.user.email,),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: TextFormField(
                  controller: msgController,
                  decoration: InputDecoration(
                    hintText: "Type Here",
                    labelText: "message",
                    border: OutlineInputBorder(),
                    suffixIcon: IconButton(
                      icon: Icon(Icons.send,),
                      onPressed: (){
                        DateTime now = DateTime.now();
                        cubit.sendMessage(msgController.text,now);
                        print(msgController.text);
                        msgController.clear();
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },

    );
  }
}
