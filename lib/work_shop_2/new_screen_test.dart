import 'package:eraa_soft_course/work_shop_2/components.dart';
import 'package:flutter/material.dart';
class NewScreenTest extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text("Currency App",
        style: TextStyle(
          fontSize: 50,
          color: Colors.black87,
          fontWeight: FontWeight.bold,
        ),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            buildCurrentView(
              flagUrl: "assets/images/egypt.jpg",
              currency: "EGP",
              nameCountry: "EGP",
              symbol: "\$",
            ),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 50,
                  width: 50,
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
                  child: Center(
                    child: Text("=",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                    ),),
                  ),
                ),
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.indigo),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Image.asset("assets/images/sw.jpg"),
                        SizedBox(width: 10,),
                        Text("Switch",
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.indigo,
                          fontWeight: FontWeight.w600,
                        ),),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30,),
            buildCurrentView(
              flagUrl: "assets/images/egypt.jpg",
              currency: "EGP",
              nameCountry: "EGP",
              symbol: "\$",
            ),

          ],
        ),
      ),
    );
  }
}
