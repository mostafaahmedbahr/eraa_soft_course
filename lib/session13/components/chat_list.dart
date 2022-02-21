import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
class ChatList extends StatelessWidget {
  final Stream messageStream;
  final userMail;
  const ChatList({this.messageStream,this.userMail});
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: messageStream,
          builder: (context,snapShot)
          {
            if(snapShot.hasData) {
              QuerySnapshot values = snapShot.data as QuerySnapshot;
              return Expanded(
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  itemCount: values.docs.length,
                  itemBuilder: (context,index)
                  {
                    return Align(
                      alignment: values.docs[index]["sender"]==userMail?
                      Alignment.centerRight:Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color:values.docs[index]["sender"]==userMail? Colors.green:Colors.red,
                          ),
                            child: Column(
                              children: [
                                Text(values.docs[index]["text"],
                                  style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.white,
                                  ),),
                              ],
                            ),),
                      ),
                    );
                  },
                ),
              );
            }
            else {
               Center(
                 child: Text("empty"),
               );
            }
            return Container();
          },
    );
  }
}
