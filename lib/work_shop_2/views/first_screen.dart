import 'package:eraa_soft_course/work_shop_2/views/second_screen.dart';
import 'package:flutter/material.dart';
class CurrencyScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        backgroundColor: Colors.black87,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image(image:
            NetworkImage("https://static.vecteezy.com/system/resources/previews/002/151/429/original/global-currency-exchange-icon-with-abstract-high-speed-network-on-blue-background-vector.jpg")),
            Text("Currency App ",
            style: TextStyle(
              fontSize: 40,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),),
            Text("Easy Change ",
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey,

              ),),
            SizedBox(
              width: double.infinity,
              height: 70,
              child: ElevatedButton(
                  onPressed: (){
                    Navigator.push(context,
                        MaterialPageRoute(
                            builder: (context)=>SecondScreen(),
                        ));
                  },
                  child: Text("Get Started",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,

                    ),
                  ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
