import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'letters.dart';
import 'lettersLowerCase.dart';
import 'hindi.dart';
import 'Tamil.dart';

class LettersPage extends StatefulWidget {
  const LettersPage({Key? key}) : super(key: key);

  @override
  _LettersPageState createState() => _LettersPageState();
}

class _LettersPageState extends State<LettersPage> {
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
        child: Column(
          children: [
            Container(
              child: Image(
                image: AssetImage("images/letters.png"),
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
                              return Letters();
                            }))
                          },
                          child: Text("Upper Case"),
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
                          child: Text("Lower Case"),
                          onPressed: () => {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return LettersLowerCase();
                            }))
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
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
                              return Hindi();
                            }))
                          },
                          child: Text("Hindi Letters"),
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
                          child: Text("Tamil Letters"),
                          onPressed: () => {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return Tamil();
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
