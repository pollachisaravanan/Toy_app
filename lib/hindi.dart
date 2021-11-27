import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'HindiShow.dart';

class Hindi extends StatefulWidget {
  const Hindi({Key? key}) : super(key: key);

  @override
  _HindiState createState() => _HindiState();
}

class _HindiState extends State<Hindi> {
  var l = [1, 2, 3, 4, 5];
  var alpha = <String, String>{
    "अ": "अनार",
    "आ": "आम",
    "इ": "इमली",
    "ईं": "ईंख",
    "उ": "उल्लू",
    "ऊ": "ऊन",
    "ऋ": "ऋषि",
    "ए": "एड़ी",
    "ऐ": "ऐनक",
    "ओ": "ओखली",
    "औ": "औषधि",
    "अं": "अंगूर",
  };

  var content = <String, String>{
    "अ": "images/hindi/one.jpg",
    "आ": "images/hindi/m.jpg",
    "इ": "images/hindi/three.jpg",
    "ईं": "images/hindi/four.jpg",
    "उ": "images/hindi/five.jpg",
    "ऊ": "images/hindi/six.jpeg",
    "ऋ": "images/hindi/seven.jpg",
    "ए": "images/hindi/eight.jpg",
    "ऐ": "images/hindi/nine.jpg",
    "ओ": "images/hindi/ten.jpg",
    "औ": "images/hindi/eleven1.jpg",
    "अं": "images/hindi/twelve.jpg",
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LETTERS",
            style: GoogleFonts.roboto(
                letterSpacing: 1,
                fontSize: 25,
                color: Colors.white,
                fontWeight: FontWeight.bold)),
        centerTitle: true,
        elevation: 15,
        backgroundColor: Colors.purpleAccent,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.purple, Colors.blue])),
        padding: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Choose A Letter",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.itim(
                      fontSize: 35,
                      color: Colors.black,
                      backgroundColor: Colors.white10),
                ),
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              lettersButton("अ"),
              lettersButton("आ"),
              lettersButton("इ"),
              lettersButton("ईं"),
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              lettersButton("उ"),
              lettersButton("ऊ"),
              lettersButton("ऋ"),
              lettersButton("ए"),
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              lettersButton("ऐ"),
              lettersButton("ओ"),
              lettersButton("औ"),
              lettersButton("अं"),
            ]),
          ],
        ),
      ),
    );
  }

  var alphaValue, ContentValue;
  void setter(var a, var b) {
    alphaValue = a;
    ContentValue = b;
  }

  FlatButton lettersButton(String val) => FlatButton(
        color: Colors.white10,
        padding: EdgeInsets.all(12.0),
        onPressed: () => {
          setter(alpha[val], content[val]),
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return HindiShow(val, alphaValue, ContentValue);
          }))
        },
        child: Text(
          val,
          style: GoogleFonts.roboto(
            fontSize: 40,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
        ),
      );
}
