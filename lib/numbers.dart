import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'numbersShow.dart';

class Numbers extends StatefulWidget {
  const Numbers({Key? key}) : super(key: key);

  @override
  _NumbersState createState() => _NumbersState();
}

class _NumbersState extends State<Numbers> {
  var alpha = <String,String>{
    "0": "Zero",
    "1": "One",
    "2": "Two",
    "3": "Three",
    "4": "Four",
    "5": "Five",
    "6": "Six",
    "7": "Seven",
    "8": "Eight",
    "9": "Nine",
  };

  var content = <String,String>{
    "0": "images/num/0.png",
    "1": "images/num/1.png",
    "2": "images/num/2.png",
    "3": "images/num/3.png",
    "4": "images/num/4.png",
    "5": "images/num/5.png",
    "6": "images/num/6.png",
    "7": "images/num/7.png",
    "8": "images/num/8.png",
    "9": "images/num/9.png",

  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("NUMBERS",
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
                  "Choose A Number",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.itim(
                      fontSize: 35,
                      color: Colors.black,
                      backgroundColor: Colors.white10),
                ),
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              numbersButton("0"),
              numbersButton("1"),
              numbersButton("2"),
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              numbersButton("3"),
              numbersButton("4"),
              numbersButton("5"),
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              numbersButton("6"),
              numbersButton("7"),
              numbersButton("8"),
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              numbersButton("9"),
            ]),
          ],
        ),
      ),
    );
  }

  var alphaValue, ContentValue;
  void setter(var a, var b) {
    alphaValue=a;
    ContentValue=b;
  }

  FlatButton numbersButton(String val) => FlatButton(
    color: Colors.white10,
    padding: EdgeInsets.all(25.0),
    onPressed: () => {
      setter(alpha[val], content[val]),
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return NumbersShow(val,alphaValue, ContentValue);
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
