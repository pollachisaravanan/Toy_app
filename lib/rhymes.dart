import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'rhymesEnglish.dart';
import 'rhymesTamil.dart';
import 'bhabha.dart';
import 'twinkle.dart';

class Rhymes extends StatefulWidget {
  const Rhymes({Key? key}) : super(key: key);

  @override
  _RhymesState createState() => _RhymesState();
}

class _RhymesState extends State<Rhymes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hear Rhymes",
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
        child: Column(
          children: [
            Container(
              child: Image(
                image: AssetImage("images/rhymes/home.jpg"),
              ),
            ),
            Container(
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Choose Language",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.pangolin(
                      fontSize: 32,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 180,
                            height: 50,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.deepOrangeAccent,
                                textStyle: GoogleFonts.pangolin(fontSize: 20),
                              ),
                              onPressed: () => {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                      return RhymesEnglish();
                                    }))
                              },
                              child: Text("English Rhymes"),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 180,
                            height: 50,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.deepOrangeAccent,
                                textStyle: GoogleFonts.pangolin(fontSize: 20),
                              ),
                              child: Text("Tamil Rhymes"),
                              onPressed: () => {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                      return RhymesTamil();
                                    }))
                              },
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height:25.0,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 180,
                            height: 50,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.deepOrangeAccent,
                                textStyle: GoogleFonts.pangolin(fontSize: 20),
                              ),
                              onPressed: () => {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                      return BhaBha();
                                    }))
                              },
                              child: Text("Bha Bha"),
                            ),
                          ),
                          Container(
                            width: 180,
                            height: 50,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.deepOrangeAccent,
                                textStyle: GoogleFonts.pangolin(fontSize: 20),
                              ),
                              onPressed: () => {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                      return Twinkle();
                                    }))
                              },
                              child: Text("Twinkle Twinkle"),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.purple, Colors.blue])),
      ),
    );
  }
}
