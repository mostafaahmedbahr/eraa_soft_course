import 'package:flutter/material.dart';
class Payment extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Payments",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),),
                Container(
                  height: 40,
                  width: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.grey[300],
                  ),
                  child: Center(
                    child: Text("ADD",
                    style: TextStyle(
                      color: Colors.blue,
                    ),),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 150,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.error,color: Colors.white,),
                        Text("\$2,000",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Colors.white,
                        ),),
                        Text("over",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 20,),
                Expanded(
                  child: Container(
                  decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  height: 150,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.money_off,color: Colors.white,),
                      Text("\$2,000",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Colors.white,
                        ),),
                      Text("upload",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),),
                    ],
                  ),
                ),),
              ],
            ),
          ),
          SizedBox(height: 20,),
          //الجزء التالت
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.brown,
              ),
              height: 170,
              width: double.infinity,
              child:Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Text("\$4,000",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              color: Colors.white,
                            ),),
                          Text("Monthly Rent",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),),
                        ],
                      ),
                      Container(
                        height: 40,
                        width: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.grey[300],
                        ),
                        child: Row(children: [
                          Icon(Icons.money_off,color: Colors.green,),
                          Text("PAID",
                            style: TextStyle(
                              color: Colors.green,
                            ),),
                        ],),
                      ),
                    ],
                  ),
                  ////
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Text("02-02-2021",
                            style: TextStyle(
                              fontSize: 25,
                            ),),
                          Text("Date",
                            style: TextStyle(
                              color: Colors.grey,
                            ),),
                        ],
                      ),
                      Column(
                        children: [
                          Text("0 days",
                            style: TextStyle(
                              fontSize: 25,
                            ),),
                          Text("Date",
                            style: TextStyle(
                              color: Colors.grey,
                            ),),
                        ],
                      ),
                      CircleAvatar(
                        backgroundImage: AssetImage("assets/images/1.jpg"),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 10,),
          // الجزء الرابع
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.purple,
              ),
              height: 170,
              width: double.infinity,
              child:Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Text("\$2,000",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              color: Colors.white,
                            ),),
                          Text("Monthly Rent",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),),
                        ],
                      ),
                      Container(
                        height: 40,
                        width: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.grey[300],
                        ),
                        child: Row(children: [
                          Icon(Icons.money_off,color: Colors.green,),
                          Text("PAID",
                            style: TextStyle(
                              color: Colors.green,
                            ),),
                        ],),
                      ),
                    ],
                  ),
                  ////
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Text("02-02-2021",
                            style: TextStyle(
                              fontSize: 25,
                            ),),
                          Text("Date",
                          style: TextStyle(
                            color: Colors.grey,
                          ),),
                        ],
                      ),
                      Column(
                        children: [
                          Text("0 days",
                          style: TextStyle(
                           fontSize: 25,
                          ),),
                          Text("Date",
                            style: TextStyle(
                              color: Colors.grey,
                            ),),
                        ],
                      ),
                      CircleAvatar(
                        backgroundImage: AssetImage("assets/images/1.jpg"),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 10,),
          //الجزء الاخير
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey[500],
              ),
              height: 60,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.home,color: Colors.white,size: 40,),
                  Icon(Icons.sanitizer,color: Colors.white,size: 40,),
                  FloatingActionButton(onPressed: (){}, child: Icon(Icons.add,size: 40,),),
                  Icon(Icons.stacked_line_chart_outlined,color: Colors.blue,size: 40,),
                  Icon(Icons.menu,color: Colors.white,size: 40,),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
