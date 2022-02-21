import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:eraa_soft_course/session13/bloc/chat/states.dart';
import 'package:eraa_soft_course/session13/models/message.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChatCubit extends Cubit<ChatStates> {
  ChatCubit() : super(ChatInitialState());

  static ChatCubit get(context) => BlocProvider.of(context);
  String userEmail;
  Stream messageStream;
  User user;

  // create function of send
  sendMessage(String text, DateTime time) {
    userEmail = FirebaseAuth.instance.currentUser.email;
    Message msg = Message(
      text: text,
      time: time,
      sender: userEmail,
    );
    FirebaseFirestore.instance
        .collection("messages")
        .add(
          msg.toMap(),
        )
        .then(
      (value) {
        emit(ChatSendSuccessState());
      },
    ).catchError(
      (error) {
        emit(ChatSendErrorState(error));
        print(error.toString());
      },
    );
  }

// create function of receive
  receiveMessage() {
    messageStream = FirebaseFirestore.instance
        .collection("messages")
        .orderBy("time")
        .snapshots();
    emit(ChatReceiveMessageState());
  }

  getUserData()
  {
    user = FirebaseAuth.instance.currentUser;
    emit(ChatGetMessageState());
  }
}
