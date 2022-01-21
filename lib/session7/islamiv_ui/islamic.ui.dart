import 'package:eraa_soft_course/session7/islamiv_ui/models/models.dart';
import 'package:flutter/material.dart';
class Islamic extends StatelessWidget {
List<AlSalah> islamicTimes=[
  AlSalah(name: "ألضهر" ,time: "12:30"),
  AlSalah(name: "ألعصر" ,time: "3:30"),
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children:islamicTimes.map((e) =>
            Container(
              child: Row(
                children: [
                  Text(e.name),
                  Text(e.time),
                ],
              ),
            ),
        ).toList() ,
      ),
    );
  }
}
