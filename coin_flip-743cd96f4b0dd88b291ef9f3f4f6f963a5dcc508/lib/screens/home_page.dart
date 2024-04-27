import 'package:flutter/material.dart';
import 'dart:math';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  final String studentName = "Pr Gj";
  int headsCnt = 0;
  int tailsCnt = 0;
  int coinSideNum;
  String coinSideImage = 'ques_mark_blue.jpg';
  bool T = true;
  @override
  Widget build(BuildContext context) {

    void flipCoin() {
      setState(() {
        coinSideNum = Random().nextInt(2);
        if (coinSideNum == 0) {
          coinSideImage = 'cat_head.png';
          headsCnt = headsCnt + 1;
        } else {
          coinSideImage = 'whale_tail.png';
          tailsCnt = tailsCnt + 1;
        }
      });
    }
    void startOver() {
      setState(() {
        coinSideImage = 'ques_mark_blue.jpg';
        headsCnt = 0;
        tailsCnt = 0;
      });
    }
    if (headsCnt > 0 || tailsCnt > 0){
      T = true;
    } else {
      headsCnt = 0;
      tailsCnt = 0;
    }




    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text(studentName + "'s Coin Flip App"),
        backgroundColor: Colors.blueGrey[900],
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome',
              style: TextStyle(
                fontFamily: 'Source Sans Pro',
                color: Colors.teal.shade100,
                fontSize: 40.0,
                letterSpacing: 2.5,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "to my Coin Flip app",
              style: TextStyle(
                fontFamily: 'Source Sans Pro',
                color: Colors.teal.shade100,
                fontSize: 20.0,
                letterSpacing: 2.5,
                fontWeight: FontWeight.bold,
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(10.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  //add border radius here
                  child: Image.asset('images/$coinSideImage'),
                  //add image location here
                ),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  flipCoin();
                },
                child: Container(
                  padding: EdgeInsets.all(10.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    //add border radius here
                    child: Image.asset('images/flip_coin.png'),
                  ),
                ),
              ),
            ),
            Text(
              'Heads = $headsCnt :  Tails = $tailsCnt',
              style: TextStyle(
                fontFamily: 'Source Sans Pro',
                color: Colors.teal.shade100,
                fontSize: 20.0,
                letterSpacing: 2.5,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextButton(
              style: TextButton.styleFrom(
                shape: StadiumBorder(
                  side: BorderSide(color: Colors.white, width: 2),
                ),
              ),
              onPressed: () {
                startOver();
              },
              child: Text(
                'Start Over',
                style: TextStyle(
                  fontSize: 20.0,
                  fontFamily: 'Pacifico',
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.announcement,
                  color: Colors.teal.shade300,
                ),
                title: Text(
                  'Click the hand to start the game \nClick Start Over to reset the counts',
                  style: TextStyle(
                    color: Colors.teal.shade900,
                    fontFamily: 'Source Sans Pro',
                    fontSize: 15.0,
                  ),
                ),
              ),
            ),
          ], // children array
        ),
      ),
    );
  } //build
}
