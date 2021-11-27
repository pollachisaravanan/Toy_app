import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_tts/flutter_tts.dart';

class Words extends StatefulWidget {
  const Words({Key? key}) : super(key: key);

  @override
  _WordsState createState() => _WordsState();
}

class _WordsState extends State<Words> {
  var alpha = <String, String>{
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
  var content = {
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

  List<ItemModel> items = [];
  List<ItemModel> items2 = [];
  bool gameOver = false;

  String surpriseResult = "";
  void getSurprise() {
    setState(() {
      final random = new Random();
      var surprise = [
        "Congratulations",
        "Excellent",
        "Fantastic",
        "Great",
        "Good Work",
        "Perfect",
        "Keep it up"
      ];
      surprise.shuffle();
      var m = random.nextInt(surprise.length);
      surpriseResult = surprise[m];
    });
  }

  @override
  void initState() {
    super.initState();
    initGame();
  }

  FlutterTts tts = FlutterTts();

  Future _speak(String s) async {
    await tts.setPitch(0.7);
    await tts.setVolume(1.0);
    await tts.speak(s);
  }

  Future _stop() async {
    await tts.stop();
  }
  int score =0;
  initGame() {
    score =0;
    //Random Picker
    Random rnd = new Random();
    var mylist1 = [];
    var lst = [
      "A",
      "B",
      "C",
      "D",
      "E",
      "F",
      "G",
      "H",
      "I",
      "J",
      "K",
      "L",
      "M",
      "N",
      "O",
      "P",
      "Q",
      "R",
      "S",
      "T",
      "U",
      "V",
      "W",
      "X",
      "Y",
      "Z"
    ];
    for (int k = 0; k < 10; k++) {
      var m = lst[rnd.nextInt(lst.length)];
      if (!mylist1.contains(m)) {
        mylist1.add(m);
      }
    }

    gameOver = false;
    items = [
      ItemModel(
          value: alpha[mylist1[0]].toString(),
          name: alpha[mylist1[0]].toString(),
          img: content[mylist1[0]].toString()),
      ItemModel(
          value: alpha[mylist1[1]].toString(),
          name: alpha[mylist1[1]].toString(),
          img: content[mylist1[1]].toString()),
      ItemModel(
          value: alpha[mylist1[2]].toString(),
          name: alpha[mylist1[2]].toString(),
          img: content[mylist1[2]].toString()),
      ItemModel(
          value: alpha[mylist1[3]].toString(),
          name: alpha[mylist1[3]].toString(),
          img: content[mylist1[3]].toString()),
      ItemModel(
          value: alpha[mylist1[4]].toString(),
          name: alpha[mylist1[4]].toString(),
          img: content[mylist1[4]].toString()),
      ItemModel(
          value: alpha[mylist1[5]].toString(),
          name: alpha[mylist1[5]].toString(),
          img: content[mylist1[5]].toString()),
    ];
    items2 = List<ItemModel>.from(items);

    items.shuffle();
    items2.shuffle();
  }

  @override
  Widget build(BuildContext context) {
    if (items.length == 0) gameOver = true;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => {
            _stop(),
            Navigator.pop(context),
          },
        ),
        title: Text("WORDS QUIZ",
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
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'Match The Words',
                              style: GoogleFonts.indieFlower(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'Score: $score/60',
                              style: GoogleFonts.pangolin(
                                fontSize: 30,
                                color: Colors.red,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                if (!gameOver)
                  Row(
                    children: [
                      Spacer(),
                      Column(
                        children: items.map((item) {
                          return Container(
                            margin: EdgeInsets.all(2),
                            child: Draggable<ItemModel>(
                              data: item,
                              childWhenDragging: CircleAvatar(
                                backgroundColor: Colors.white,
                                backgroundImage: AssetImage(item.img),
                                radius: 38,
                              ),
                              feedback: CircleAvatar(
                                backgroundColor: Colors.white,
                                backgroundImage: AssetImage(item.img),
                                radius: 38,
                              ),
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                backgroundImage: AssetImage(item.img),
                                radius: 38,
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                      Spacer(flex: 2),
                      Column(
                        children: items2.map((item) {
                          return DragTarget<ItemModel>(
                            onAccept: (receivedItem) {
                              if (item.value == receivedItem.value) {
                                setState(() {
                                  items.remove(receivedItem);
                                  items2.remove(item);
                                  getSurprise();
                                });
                                _speak(receivedItem.name);
                                score+=10;
                                final snackBar = SnackBar(content: Text(surpriseResult,style: TextStyle(fontSize: 15),),backgroundColor: Colors.lightGreen,duration: Duration(milliseconds: 500),);
                                ScaffoldMessenger.of(context).showSnackBar(snackBar);
                                Timer(
                                    Duration(milliseconds: 500),
                                    () => {
                                          item.accepting = false,
                                          if (items.length == 0)
                                            {
                                              setState(() {
                                                _speak("Reloading");
                                                initGame();
                                              }),
                                            }
                                        });
                              } else {
                                setState(() {
                                  item.accepting = false;
                                  _speak("Try Again");
                                });
                                score-=5;
                                final snackBar = SnackBar(content: Text("Try Again",style: TextStyle(fontSize: 15),),backgroundColor: Colors.pink,duration: Duration(milliseconds: 500),);
                                ScaffoldMessenger.of(context).showSnackBar(snackBar);
                              }
                            },
                            onWillAccept: (receivedItem) {
                              setState(() {
                                item.accepting = true;
                              });
                              return true;
                            },
                            onLeave: (receivedItem) {
                              setState(() {
                                item.accepting = false;
                              });
                            },
                            builder: (context, acceptedItems, rejectedItems) =>
                                Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color: item.accepting
                                          ? Colors.grey[400]
                                          : Colors.grey[200],
                                    ),
                                    alignment: Alignment.center,
                                    height:
                                        MediaQuery.of(context).size.width / 8,
                                    width:
                                        MediaQuery.of(context).size.width / 3,
                                    margin: EdgeInsets.all(15),
                                    child: Text(
                                      item.name,
                                      style: GoogleFonts.roboto(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 25,
                                        color: Colors.black87,
                                      ),
                                    )),
                          );
                        }).toList(),
                      ),
                      Spacer(),
                    ],
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ItemModel {
  final String name;
  final String img;
  final String value;
  bool accepting;
  ItemModel(
      {required this.name,
      required this.value,
      required this.img,
      this.accepting = false});
}
