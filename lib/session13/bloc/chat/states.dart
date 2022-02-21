
abstract class ChatStates{}

class ChatInitialState extends ChatStates{}

class ChatSendLoadingState extends ChatStates{}

class ChatSendSuccessState extends ChatStates{}

class ChatSendErrorState extends ChatStates{
  final  error;
  ChatSendErrorState(this.error);
}

class ChatReceiveMessageState extends ChatStates{}

class ChatGetMessageState extends ChatStates{}

