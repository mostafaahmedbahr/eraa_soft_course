import 'package:flutter/material.dart';
class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
           children: [
            CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage("assets/images/1.jpg",),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              textBaseline: TextBaseline.alphabetic,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              children: [
                Text("Mostafa Bahr",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),),
                SizedBox(width: 5,),
                Icon(
                  Icons.check_circle,
                  color: Colors.blue,
                ),
              ],
            ),
             SizedBox(height: 10,),
             Text("iam interested in programming and making mobiles applications , by learning dart and flutter",
             textAlign: TextAlign.center,
             style: TextStyle(
               fontSize: 15,
             ),),
             SizedBox(height: 20,),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceAround,
               children: [
                 Column(
                   children: [
                     Text("540",
                     style: TextStyle(
                       color: Colors.green,
                       fontSize: 30,
                       fontWeight: FontWeight.bold,
                     ),),
                     Text("Rating"),
                   ],
                 ),
                 Column(
                   children: [
                     Text("700",
                       style: TextStyle(
                         fontSize: 30,
                         fontWeight: FontWeight.bold,
                       ),),
                     Text("Followers"),
                   ],
                 ),
                 Column(
                   children: [
                     Text("142",
                       style: TextStyle(
                         color: Colors.green,
                         fontSize: 30,
                         fontWeight: FontWeight.bold,
                       ),),
                     Text("Posts"),
                   ],
                 ),
               ],
             ),
             SizedBox(height: 20,),
             Container(
               decoration: BoxDecoration(
                 color: Colors.redAccent,
                 borderRadius: BorderRadius.circular(10),
               ),
               width: double.infinity,
               child: Row(
                 children: [
                   Padding(
                     padding: const EdgeInsets.only(left: 10),
                     child: Icon(Icons.add,
                     size: 40,
                     color: Colors.white,),
                   ),
                   Padding(
                     padding: const EdgeInsets.only(left: 70),
                     child: Text("Subscribe",
                     style: TextStyle(
                       fontSize: 28,
                       color: Colors.white,
                     ),),
                   ),
                 ],
               ),
             ),
             SizedBox(height: 20,),
             Row(
               children: [
                 Icon(Icons.pin_drop,color: Colors.purple,),
                 SizedBox(width: 5,),
                 Text("Lives in Egypt",
                 style: TextStyle(
                   fontSize: 20,
                 ),),
               ],
             ),
             SizedBox(height: 10,),
             Row(
               children: [
                 Icon(Icons.work,color: Colors.green,),
                 SizedBox(width: 5,),
                 Text("Student at Eraa Soft Academy . ",
                   style: TextStyle(
                     fontSize: 20,
                   ),),
               ],
             ),
             SizedBox(height: 10,),
             Row(
               children: [
                 Icon(Icons.circle,color: Colors.yellow,),
                 SizedBox(width: 5,),
                 Text("Skills Html, Css, Dart, Flutter .",
                   style: TextStyle(
                     fontSize: 20,
                   ),),
               ],
             ),
           ],
        ),
      ),
    );
  }
}
