 import 'package:eraa_soft_course/session7/form_view/second_screen.dart';
import 'package:flutter/material.dart';
class FormC extends StatefulWidget {

  @override
  _FormCState createState() => _FormCState();
}
final _formKey=GlobalKey<FormState>();
var emailCon=TextEditingController();
var passCon = TextEditingController();

class _FormCState extends State<FormC> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Form(
        key: _formKey,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                TextFormField(
                  onFieldSubmitted: (value){
                    print(value);
                  },
                  controller: emailCon,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Name",
                  ),
                  validator: (value){
                    return "enter name";
                  },

                ),
                TextFormField(
                  onFieldSubmitted: (value){
                    print(value);
                  },
                  controller: passCon,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "PassWord",
                  ),
                  validator: (value){
                    return "enter name";
                  },

                ),
                RaisedButton(
                  child: Text("Submit"),
                  onPressed: (){
                    String name= "mostafa";
                    String passWord="123";
                    if(emailCon.text=="mostafa" && passCon.text=="123"){
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context)=>Second(),
                      ),
                      );
                    }
                    return "hkj";
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
