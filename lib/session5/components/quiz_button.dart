import 'package:flutter/material.dart';
class QuizButton extends StatelessWidget {
  final String name;
  final Color color;

  const QuizButton({
    this.name,
    this.color,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Padding(
        padding:EdgeInsets.all(8),
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(8),
          width: double.infinity,
          decoration: BoxDecoration(
            color:color,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Text(name,
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
            ),),
        ),
      ),
    );
  }
}
