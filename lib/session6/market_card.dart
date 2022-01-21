import 'package:eraa_soft_course/session6/my_card.dart';
import 'package:eraa_soft_course/session6/total.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class MarketCard extends StatefulWidget {
  static int orangeCounter=0;
  static int orangePrice=3;
  static int totalOrangePrice=0;

  static int bananaCounter=0;
  static int bananaPrice=4;
  static int totalOBananaPrice=0;

  static int grapeCounter=0;
  static int grapePrice=2;
  static int totalGrapePrice=0;

  static int lemonCounter=0;
  static int lemonPrice=1;
  static int totalLemonPrice=0;

  // const MarketCard({
  // this.orangeCounter,
  //this.orangePrice,
  //this.totalOrangePrice});
  @override
  _MarketCardState createState() => _MarketCardState();
}
class _MarketCardState extends State<MarketCard> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(),
      body:SingleChildScrollView(
        child: Column(
          children: [
            // اول كارد
            Row(
              children: [
                MyCard(
                  image: "https://d2gg9evh47fn9z.cloudfront.net/800px_COLOURBOX1802203.jpg",
                  name: "Orange",
                  country: "ITALY",
                  price:MarketCard.orangePrice.toString(),
                ),
                MyCard(
                  image: "https://image.freepik.com/free-photo/lemon_1205-1668.jpg",
                  name: "Lemon",
                  country: "Egypt",
                  price:MarketCard.lemonPrice.toString(),
                ),
              ],
            ),
            Row(
              children: [
                MyCard(
                  image: "https://image.freepik.com/free-vector/c-white-background_1308-13505.jpg",
                  name: "Grape",
                  country: "ENGLAND",
                  price:MarketCard.grapePrice.toString(),
                ),
                MyCard(
                  image: "https://image.freepik.com/free-photo/fresh-yellow-banana_2829-13457.jpg",
                  name: "Banana",
                  country: "SADIA",
                  price:MarketCard.bananaPrice.toString(),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: (){
                Navigator.push(context,
                  MaterialPageRoute(
                    builder: (context)=>Total(
                      ocounter:MarketCard.orangeCounter,
                      ototalPrice: MarketCard.totalOrangePrice,
                      bcounter: MarketCard.bananaCounter,
                      btotalPrice: MarketCard.bananaPrice,
                    ),
                  ),
                );
              },
              child: Text("Calculate"),
            ),


          ],
        ),
      ),
    );
  }
}
