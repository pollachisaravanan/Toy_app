import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'lettersShow.dart';
class Letters extends StatefulWidget {
  const Letters({Key? key}) : super(key: key);

  @override
  _LettersState createState() => _LettersState();
}

class _LettersState extends State<Letters> {
  var alpha = <String,String>{
    "A": "Apple",
    "B": "Bird",
    "C": "Cake",
    "D": "Deer",
    "E": "Elephant",
    "F": "Fish",
    "G": "Grapes",
    "H": "Hippo",
    "I": "Igloo",
    "J": "Jaguar",
    "K": "Kite",
    "L": "Lion",
    "M": "Mango",
    "N": "Nut",
    "O": "Owl",
    "P": "Pizza",
    "Q": "Quail",
    "R": "Rabbit",
    "S": "Sheep",
    "T": "Tiger",
    "U": "Umbrella",
    "V": "Vulture",
    "W": "Wolf",
    "X": "X-Ray Fish",
    "Y": "Yak",
    "Z": "Zebra",
  };

  var content = <String,String>{
    "A": "images/a.jpg",
    "B": "images/b.jpg",
    "C": "images/c.jpg",
    "D": "images/d.jpg",
    "E": "images/e.jpg",
    "F": "images/f.jpg",
    "G": "images/g.jpg",
    "H": "images/h.jpg",
    "I": "images/i.jpg",
    "J": "images/j.jpg",
    "K": "images/k.jpg",
    "L": "images/l.jpg",
    "M": "images/m.jpg",
    "N": "images/n.jpg",
    "O": "images/o.jpg",
    "P": "images/p.jpg",
    "Q": "images/q.jpg",
    "R": "images/r.jpg",
    "S": "images/s.jpg",
    "T": "images/t.jpg",
    "U": "images/u.jpg",
    "V": "images/v.jpg",
    "W": "images/w.jpg",
    "X": "images/x.jpg",
    "Y": "images/y.jpg",
    "Z": "images/z.jpg",
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
                  "Choose An Alphabet",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.itim(
                      fontSize: 35,
                      color: Colors.black,
                      backgroundColor: Colors.white10),
                ),
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              lettersButton("A"),
              lettersButton("B"),
              lettersButton("C"),
              lettersButton("D"),
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              lettersButton("E"),
              lettersButton("F"),
              lettersButton("G"),
              lettersButton("H"),
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              lettersButton("I"),
              lettersButton("J"),
              lettersButton("K"),
              lettersButton("L"),
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              lettersButton("M"),
              lettersButton("N"),
              lettersButton("O"),
              lettersButton("P"),
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              lettersButton("Q"),
              lettersButton("R"),
              lettersButton("S"),
              lettersButton("T"),
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              lettersButton("U"),
              lettersButton("V"),
              lettersButton("W"),
              lettersButton("X"),
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              lettersButton("Y"),
              lettersButton("Z"),
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
            return LettersShow(val,alphaValue, ContentValue);
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
