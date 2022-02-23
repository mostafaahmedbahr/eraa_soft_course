import 'package:eraa_soft_course/work_shop_2/bloc/cubit.dart';
import 'package:eraa_soft_course/work_shop_2/bloc/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class SecondScreen extends StatefulWidget {
  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {

  var cur ="";
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CurrencyCubit,CurrencyStates>(
      listener: (context,state){},
      builder: (context,state){
        var cubit = CurrencyCubit.get(context);
        return Scaffold(
         // backgroundColor: Colors.black87,
          appBar: AppBar(
            backgroundColor: Colors.black87,
            elevation: 0,
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                 children: [
                  TextFormField(
                    keyboardType:TextInputType.number,
                    controller: cubit.amountCon,
                    decoration: InputDecoration(
                      label: Text("Amount"),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide:BorderSide(
                          color: Colors.pinkAccent,
                          width: 5,
                          style:BorderStyle.solid,
                        ) ,
                      ),
                    ),
                  ),
                  SizedBox(height: 70,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("From ",
                        style: TextStyle(
                        fontSize: 40,
                      ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.teal,
                        borderRadius: BorderRadius.circular(20),
                        ),
                        child: DropdownButton(
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 30,
                          ),
                          icon: Icon(Icons.keyboard_arrow_down),
                          value: cubit.dropdownvalue1,
                          items: cubit.items.map((String items) {
                            return DropdownMenuItem(
                                value: items,
                                child: Text(items)
                            );
                          }
                          ).toList(),
                          onChanged: (String newValue){
                            setState(() {
                              cubit.dropdownvalue1 = newValue;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 50,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("To ",
                        style: TextStyle(
                          fontSize: 40,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.teal,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: DropdownButton(
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.black87,
                          ),
                          icon: Icon(Icons.keyboard_arrow_down),
                          value: cubit.dropdownvalue2,
                          items: cubit.items.map((String items) {
                            return DropdownMenuItem(
                                value: items,
                                child: Text(items)
                            );
                          }
                          ).toList(),
                          onChanged: (String newValue){
                            setState(() {
                              cubit.dropdownvalue2 = newValue;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                   SizedBox(height: 50,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        height: 70,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.teal,
                          ),
                          onPressed: () async{
                             // print(cubit.amountCon.text);
                             // print(cubit.dropdownvalue1.toString());
                             // print(cubit.dropdownvalue2.toString());
                            await cubit.getCurrencyData(
                               from: "${cubit.dropdownvalue1}",
                               to: "${cubit.dropdownvalue2}",
                               amount: int.parse(cubit.amountCon.text),
                             );

                             // print(cubit.currency.approxResult);
                            if(cubit.dropdownvalue2=="EGP")
                             setState(() {
                               cur="L.E";
                             });
                            if(cubit.dropdownvalue2=="USD")
                              setState(() {
                                cur="USD";
                              });
                            if(cubit.dropdownvalue2=="AUD")
                              setState(() {
                                cur="AUD";
                              });
                            if(cubit.dropdownvalue2=="QAR")
                              setState(() {
                                cur="QAR";
                              });
                            if(cubit.dropdownvalue2=="SAR")
                              setState(() {
                                cur="SAR";
                              });
                            print(cur);
                          },
                          child: Text("Convert",
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,

                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 70,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.teal,
                          ),
                          onPressed: (){
                              cubit.resetValue();
                            // cubit.getCurrencyData(
                            //   from: "${cubit.dropdownvalue1}",
                            //   to: "${cubit.dropdownvalue2}",
                            //   amount: int.parse(cubit.amountCon.text),
                            // );
                          },
                          child: Text("Reset",
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,

                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                   SizedBox(height: 50,),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Text(
                         cubit.currency==null?'0':
                         cubit.currency.approxResult.toString(),
                         style: TextStyle(
                           fontSize: 45,
                           fontWeight: FontWeight.bold,
                         ),),
                       SizedBox(width: 10,),
                       Text("${cur}"),
                     ],
                   ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
