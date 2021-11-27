import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'wordsLearn.dart';
import 'multiwords.dart';

class WordsPage extends StatefulWidget {
  const WordsPage({Key? key}) : super(key: key);

  @override
  _WordsPageState createState() => _WordsPageState();
}

class _WordsPageState extends State<WordsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Words",
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
        child: Column(
          children: [
            Container(
              child: Image(
                image: AssetImage("images/words.jpg"),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              child: Text(
                "Choose",
                textAlign: TextAlign.center,
                style: GoogleFonts.pangolin(
                  fontSize: 32,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 150,
                        height: 50,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.deepOrangeAccent,
                            textStyle: GoogleFonts.pangolin(fontSize: 20),
                          ),
                          onPressed: () => {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return WordsLearn();
                            }))
                          },
                          child: Text("Words"),
                        ),
                      ),
                      Container(
                        width: 150,
                        height: 50,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.deepOrangeAccent,
                            textStyle: GoogleFonts.pangolin(fontSize: 20),
                          ),
                          child: Text("Multi Words"),
                          onPressed: () => {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return MultiWords();
                            }))
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
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
