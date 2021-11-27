import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'lettersShow.dart';
class LettersLowerCase extends StatefulWidget {
  const LettersLowerCase({Key? key}) : super(key: key);

  @override
  _LettersLowerCaseState createState() => _LettersLowerCaseState();
}

class _LettersLowerCaseState extends State<LettersLowerCase> {
  var alpha = <String,String>{
    "a": "apple",
    "b": "bird",
    "c": "cake",
    "d": "deer",
    "e": "elephant",
    "f": "fish",
    "g": "grapes",
    "h": "hippo",
    "i": "igloo",
    "j": "jaguar",
    "k": "kite",
    "l": "lion",
    "m": "mango",
    "n": "nut",
    "o": "owl",
    "p": "pizza",
    "q": "quail",
    "r": "rabbit",
    "s": "sheep",
    "r": "tiger",
    "u": "umbrella",
    "v": "vulture",
    "w": "wolf",
    "x": "x-ray fish",
    "y": "yak",
    "z": "zebra",
  };

  var content = <String,String>{
    "a": "images/a.jpg",
    "b": "images/b.jpg",
    "c": "images/c.jpg",
    "d": "images/d.jpg",
    "e": "images/e.jpg",
    "f": "images/f.jpg",
    "g": "images/g.jpg",
    "h": "images/h.jpg",
    "i": "images/i.jpg",
    "j": "images/j.jpg",
    "k": "images/k.jpg",
    "l": "images/l.jpg",
    "m": "images/m.jpg",
    "n": "images/n.jpg",
    "o": "images/o.jpg",
    "p": "images/p.jpg",
    "q": "images/q.jpg",
    "r": "images/r.jpg",
    "s": "images/s.jpg",
    "t": "images/t.jpg",
    "u": "images/u.jpg",
    "v": "images/v.jpg",
    "w": "images/w.jpg",
    "x": "images/x.jpg",
    "y": "images/y.jpg",
    "z": "images/z.jpg",
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
              lettersButton("a"),
              lettersButton("b"),
              lettersButton("c"),
              lettersButton("d"),
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              lettersButton("e"),
              lettersButton("f"),
              lettersButton("g"),
              lettersButton("h"),
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              lettersButton("i"),
              lettersButton("j"),
              lettersButton("k"),
              lettersButton("l"),
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              lettersButton("m"),
              lettersButton("n"),
              lettersButton("o"),
              lettersButton("p"),
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              lettersButton("q"),
              lettersButton("r"),
              lettersButton("s"),
              lettersButton("t"),
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              lettersButton("u"),
              lettersButton("v"),
              lettersButton("w"),
              lettersButton("x"),
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              lettersButton("y"),
              lettersButton("z"),
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
