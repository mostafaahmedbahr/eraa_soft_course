import 'package:flutter/material.dart';
Widget buildCurrentView({
  String flagUrl,
  String nameCountry,
  String currency,
  String symbol,
})=> Container(
  height: 150,
  decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(5),
    boxShadow: [
      BoxShadow(
        color: Colors.indigo.withOpacity(0.3),
        blurRadius: 4,
        offset: Offset(0,3),
        spreadRadius: 2,

      ),
    ],
  ),
  child: Column(
    children: [
      Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Image.asset(flagUrl,
              height: 60,
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(nameCountry,
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.black87,
                    fontWeight: FontWeight.w600,
                  ),),
                Text(currency,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                  ),),
              ],
            ),
          ),
          Icon(Icons.arrow_right,
            color: Colors.grey,),
        ],
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal:8),
        child: TextFormField(
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w500,
          ),
          keyboardType:TextInputType.number,
          // controller: cubit.amountCon,
          decoration: InputDecoration(
            label: Text("Amount"),
            suffixIcon: Text(symbol,
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey,
              ),),
            suffixIconConstraints: BoxConstraints(
              minHeight: 0,
              minWidth: 0,
            ),
          ),
        ),
      ),
    ],
  ),
);