import 'package:flutter/material.dart';
class Total extends StatefulWidget {
  final int ocounter;
  final int ototalPrice;
  final int bcounter;
  final int btotalPrice;
  const Total({
    this.ocounter,
    this.ototalPrice,
    this.bcounter,
    this.btotalPrice,
  });
  @override
  _TotalState createState() => _TotalState();
}
class _TotalState extends State<Total> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        title: Text("Total Count And Price",
          style: TextStyle(
            color: Colors.black,
          ),),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Container(
        child: Column(
          children: [
            // orange
            Text("${widget.ocounter}"),
            Text("${widget.ototalPrice}"),
//banana
            Text("${widget.bcounter}"),
            Text("${widget.btotalPrice}"),

          ],
        ),
      ),
    );
  }
}
