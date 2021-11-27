import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';
import "dart:math";
import 'package:flutter_tts/flutter_tts.dart';

class LetterQuiz extends StatefulWidget {
  const LetterQuiz({Key? key}) : super(key: key);

  @override
  _LetterQuizState createState() => _LetterQuizState();
}

class _LetterQuizState extends State<LetterQuiz> {
  FlutterTts tts = FlutterTts();
  Future _speak(value) async {
    await tts.speak(value);
    await tts.setSpeechRate(0.7);
  }

  Future _stop() async {
    await tts.stop();
  }

  int score =0;
  var surpriseResult;
  void initState() {
    getRandomElement(mylist);
    _speak("Choose " + myElement);
    super.initState();
  }

  var myElement = "", myElement1 = "", myElement2 = "", myElement3 = "";
  //Random Choosing
  var content1 = "", content2 = "", content3 = "";
  var x, y, z;
  void setter(var a, var b, var c) {
    x = a;
    y = b;
    z = c;
  }

  void getRandomElement(List list) {
    final random = new Random();
    var i = random.nextInt(list.length);
    var j = random.nextInt(list.length);
    var k = random.nextInt(list.length);
    if(i == j || j==k || i==k){
      i = random.nextInt(list.length);
      j = random.nextInt(list.length);
      k = random.nextInt(list.length);
    }

    var surprise = ["Congratulations","Excellent","Fantastic","Great","Good Work","Perfect","Keep it up"];
    surprise.shuffle();
    var m = random.nextInt(surprise.length);

    setState(() {
      myElement = list[i];
      myElement1 = list[j];
      myElement2 = list[i];
      myElement3 = list[k];
      var mylist1 = [myElement1, myElement2, myElement3];
      mylist1.shuffle();
      myElement1 = mylist1[0];
      myElement2 = mylist1[1];
      myElement3 = mylist1[2];
      setter(content[myElement1], content[myElement2], content[myElement3]);
      content1 = x;
      content2 = y;
      content3 = z;

      surpriseResult = surprise[m];
    });
  }

  var content = <String, String>{
    "A": "images/alpha/a.png",
    "B": "images/alpha/b.png",
    "C": "images/alpha/c.png",
    "D": "images/alpha/d.png",
    "E": "images/alpha/e.png",
    "F": "images/alpha/f.png",
    "G": "images/alpha/g.png",
    "H": "images/alpha/h.png",
    "I": "images/alpha/i.png",
    "J": "images/alpha/j.png",
    "K": "images/alpha/k.png",
    "L": "images/alpha/l.png",
    "M": "images/alpha/m.png",
    "N": "images/alpha/n.png",
    "O": "images/alpha/o.png",
    "P": "images/alpha/p.png",
    "Q": "images/alpha/q.png",
    "R": "images/alpha/r.png",
    "S": "images/alpha/s.png",
    "T": "images/alpha/t.png",
    "U": "images/alpha/u.png",
    "V": "images/alpha/v.png",
    "W": "images/alpha/w.png",
    "X": "images/alpha/x.png",
    "Y": "images/alpha/y.png",
    "Z": "images/alpha/z.png",
  };

  var mylist = [
    'A',
    'B',
    'C',
    'D',
    'E',
    'F',
    'G',
    'H',
    'I',
    'J',
    'K',
    'L',
    'M',
    'N',
    'O',
    'P',
    'Q',
    'R',
    'S',
    'T',
    'U',
    'V',
    'W',
    'X',
    'Y',
    'Z'
  ];

  //END

  @override
  Widget build(BuildContext context) {
    int count= 0;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: ()=>{
            _stop(),
            Navigator.pop(context),
          },
        ),
        title: Text("LETTER QUIZ",
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
        child: Column(children: [
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Find Out",
                style: GoogleFonts.aBeeZee(
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                myElement,
                style: GoogleFonts.aBeeZee(
                  fontSize: 120,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 35,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                  onTap: () {
                    if (myElement == myElement1) {
                      _speak(surpriseResult);
                      setState(() {
                        score+=5;
                      });
                      final snackBar = SnackBar(content: Text(surpriseResult,style: TextStyle(fontSize: 15),),backgroundColor: Colors.lightGreen,duration: Duration(milliseconds: 500),);
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      Timer(Duration(milliseconds: 2000), () => {initState()});
                    } else {
                      _speak("Try Again");
                      final snackBar = SnackBar(content: Text("Try Again",style: TextStyle(fontSize: 15),),backgroundColor: Colors.pink,duration: Duration(milliseconds: 500),);
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      count++;
                      if(count==2){
                        _speak("Reloading");
                        Timer(Duration(milliseconds: 2000), () => {initState()});
                      }
                    }
                  }, // Handle your callback
                  child: Ink(
                    height: 120,
                    width: 120,
                    color: Colors.blue,
                    child: Container(
                      color: Colors.black12,
                      child: Image(
                        image: AssetImage("$content1"),
                      ),
                    ),
                  )),
              InkWell(
                  onTap: () {
                    if (myElement == myElement2) {
                      _speak(surpriseResult);
                      setState(() {
                        score+=5;
                      });
                      final snackBar = SnackBar(content: Text(surpriseResult,style: TextStyle(fontSize: 15),),backgroundColor: Colors.lightGreen,duration: Duration(milliseconds: 500),);
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      Timer(Duration(milliseconds: 3000), () => {initState()});
                    } else {
                      _speak("Try Again");
                      final snackBar = SnackBar(content: Text("Try Again",style: TextStyle(fontSize: 15),),backgroundColor: Colors.pink,duration: Duration(milliseconds: 500),);
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      count++;
                      if(count==2){
                        _speak("Reloading");
                        Timer(Duration(milliseconds: 2000), () => {initState()});
                      }
                    }
                  }, // Handle your callback
                  child: Ink(
                    height: 120,
                    width: 120,
                    color: Colors.blue,
                    child: Container(
                      color: Colors.black12,
                      child: Image(
                        image: AssetImage("$content2"),
                      ),
                    ),
                  )),
              InkWell(
                  onTap: () {
                    if (myElement == myElement3) {
                      _speak(surpriseResult);
                      setState(() {
                        score+=5;
                      });
                      final snackBar = SnackBar(content: Text(surpriseResult,style: TextStyle(fontSize: 15),),backgroundColor: Colors.lightGreen,duration: Duration(milliseconds: 500),);
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      Timer(Duration(milliseconds: 3000), () => {initState()});
                    } else {
                      _speak("Try Again");
                      final snackBar = SnackBar(content: Text("Try Again",style: TextStyle(fontSize: 15),),backgroundColor: Colors.pink,duration: Duration(milliseconds: 500),);
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      count++;
                      if(count==2){
                        _speak("Reloading");
                        Timer(Duration(milliseconds: 2000), () => {initState()});
                      }
                    }
                  }, // Handle your callback
                  child: Ink(
                    height: 120,
                    width: 120,
                    color: Colors.blue,
                    child: Container(
                      color: Colors.black12,
                      child: Image(
                        image: AssetImage('$content3'),
                      ),
                    ),
                  )),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 150,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.purpleAccent,
                    textStyle: GoogleFonts.pangolin(fontSize: 20),
                  ),
                  onPressed: () => {
                    getRandomElement(mylist),
                    _speak("Choose " + myElement),
                  },
                  child: Text(
                    "Skip",
                    style: GoogleFonts.aBeeZee(
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20,)
          ,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Score : "+"$score",style: TextStyle(color: Colors.white,fontSize: 20),),
            ],
          ),
        ]),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.purple, Colors.blue])),
      ),
    );
  }
}
