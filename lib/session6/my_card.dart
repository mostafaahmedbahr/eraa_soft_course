import 'package:eraa_soft_course/session6/market_card.dart';
import 'package:flutter/material.dart';
class MyCard extends StatefulWidget {
  final String image;
  final String name;
  final String country;
  final String price;

  const MyCard({
    this.image,
    this.name,
    this.country,
    this.price,

  });

  @override
  _MyCardState createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  //int orangeCounter=0;
  //int orangePrice=3;
  //int toOrangePrice=0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 180,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        padding: EdgeInsets.only(left: 10,top: 10,),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Align(
                alignment: Alignment.topRight,
                child: Icon(Icons.favorite,
                  color: Colors.red,),
              ),
            ),
            Image.network(widget.image,
              height: 110,
            ),
            Text(widget.name,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),),
            Text(widget.country,
              style: TextStyle(
                fontSize: 30,
                color: Colors.grey,
              ),),
            Text(widget.price.toString(),
              style: TextStyle(
                fontSize: 25,
                color: Colors.green,
                fontWeight: FontWeight.bold,
              ),),
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                child: IconButton(
                  onPressed: (){
                    setState(() {
                      MarketCard.orangeCounter= MarketCard.orangeCounter+1;
                      print(MarketCard.orangeCounter);
                      MarketCard.totalOrangePrice=MarketCard.orangeCounter*MarketCard.orangePrice;
                      print(MarketCard.totalOrangePrice);
//  banana
                      MarketCard.bananaCounter= MarketCard.bananaCounter+1;
                      print(MarketCard.bananaCounter);
                      MarketCard.totalOBananaPrice=MarketCard.bananaCounter*MarketCard.bananaPrice;
                      print(MarketCard.totalOBananaPrice);
                    });
                  },
                  color:Colors.white,
                  icon: Icon(Icons.add),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

sum() {

}


