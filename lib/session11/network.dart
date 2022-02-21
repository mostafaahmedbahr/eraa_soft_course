import 'package:flutter/material.dart';
class NetWork extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: TextButton(
          onPressed: () async{
            String userName =await getName();
            print(userName);
          },
          child: Text("Get Name",
          style: TextStyle(
            fontSize: 40,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),),
        ),
      ),
    );
  }


  // database
  Future<String> getName() async
  {
    return "mostafa";
  }
}
