import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'TamilShow.dart';

class Tamil extends StatefulWidget {
  const Tamil({Key? key}) : super(key: key);

  @override
  _TamilState createState() => _TamilState();
}

class _TamilState extends State<Tamil> {
  var l=[1,2,3,4,5];
  var alpha = <String,String>{
    "அ": "அணில்",
    "ஆ": "ஆடு",
    "இ": "இலை",
    "ஈ": "ஈட்டி",
    "உ": "உலகம்",
    "ஊ": "ஊதல்",
    "எ": "எலி",
    "ஏ": "ஏணி",
    "ஐ": "ஐந்து",
    "ஒ": "ஒட்டகம்",
    "ஓ": "ஓடம்",
    "ஔ": "ஔவையார்",
  };

  var content = <String,String>{
    "அ": "images/tamil/t1.jpg",
    "ஆ": "images/tamil/t2.jpg",
    "இ": "images/tamil/t3.jpeg",
    "ஈ": "images/tamil/t4.jpg",
    "உ": "images/tamil/t5.jpg",
    "ஊ": "images/tamil/t6.jpg",
    "எ": "images/tamil/t7.jpg",
    "ஏ": "images/tamil/t8.jpg",
    "ஐ": "images/num/5.png",
    "ஒ": "images/tamil/t10.jpg",
    "ஓ": "images/tamil/t11.jpg",
    "ஔ": "images/tamil/t12.jpg",
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
                  "Choose a Tamil Letter",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.itim(
                      fontSize: 30,
                      color: Colors.black,
                      backgroundColor: Colors.white10),
                ),
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              lettersButton("அ"),
              lettersButton("ஆ"),
              lettersButton("இ"),
              lettersButton("ஈ"),
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              lettersButton("உ"),
              lettersButton("ஊ"),
              lettersButton("எ"),
              lettersButton("ஏ"),
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              lettersButton("ஐ"),
              lettersButton("ஒ"),
              lettersButton("ஓ"),
              lettersButton("ஔ"),
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

  FlatButton lettersButton(String val) => FlatButton(
    color: Colors.white10,
    padding: EdgeInsets.all(12.0),
    onPressed: () => {
      setter(alpha[val], content[val]),
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return TamilShow(val,alphaValue, ContentValue);
      }))
    },
    child: Text(
      val,
      style: GoogleFonts.roboto(
        fontSize: 35,
        fontWeight: FontWeight.w400,
        color: Colors.white,
      ),
    ),
  );
}
