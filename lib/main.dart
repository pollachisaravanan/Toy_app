import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'LettersPage.dart';
import 'numbers.dart';
import 'words.dart';
import 'LetterQuiz.dart';
import 'WordsPage.dart';
import 'rhymes.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    title: "Learn Alphabets",
    home: HomeScreen(),
    debugShowCheckedModeBanner: false,
  ));
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LEARN ALPHANUMERICS",
            style: GoogleFonts.roboto(
                letterSpacing: 1,
                fontSize: 25,
                color: Colors.white,
                fontWeight: FontWeight.bold)),
        centerTitle: true,
        elevation: 15,
        backgroundColor: Colors.purpleAccent,
      ),
      body: SingleChildScrollView(
        child:Column(
        children:[
         Container(
        child: Column(
          children: [
            Container(
              child: Image(
                image: AssetImage("images/homePic.jpg"),
              ),
            ),
            Container(
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Choose Your Difficulty",
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
                                  return LettersPage();
                                }))
                              },
                              child: Text("Letters"),
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
                              child: Text("Numbers"),
                              onPressed: () => {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return Numbers();
                                }))
                              },
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Column(
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
                                    textStyle:
                                        GoogleFonts.pangolin(fontSize: 20),
                                  ),
                                  onPressed: () => {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) {
                                      return Rhymes();
                                    }))
                                  },
                                  child: Text("Rhymes"),
                                ),
                              ),
                              Container(
                                width: 150,
                                height: 50,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.deepOrangeAccent,
                                    textStyle:
                                        GoogleFonts.pangolin(fontSize: 20),
                                  ),
                                  onPressed: () => {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) {
                                      return WordsPage();
                                    }))
                                  },
                                  child: Text("Words"),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
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
                                  return LetterQuiz();
                                }))
                              },
                              child: Text("Letter Quiz"),
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
                              onPressed: () => {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return Words();
                                }))
                              },
                              child: Text("Words Quiz"),
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
    ]
    ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Text(
          "Made From KEC",
          textAlign: TextAlign.center,
          style: GoogleFonts.indieFlower(
            fontSize: 25,
            color: Colors.white,
          ),
        ),
        color: Colors.purpleAccent,
      ),
      drawer: Drawer(
        elevation: 10,
        child: ListView(
          padding: EdgeInsets.all(0),
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.purpleAccent,
              ),
              child: Column(
                children: [
                  Container(
                    child: CircleAvatar(
                      child: Image(image: AssetImage("images/logo.png")),
                      backgroundColor: Colors.transparent,
                      radius: 30,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "ABC Toy App",
                        style: GoogleFonts.itim(
                            fontSize: 40, color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        " Mentor: ",
                        style: GoogleFonts.kalam(
                          fontSize: 30,
                          color: Colors.pink,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      SizedBox(width:30,),
                      Text(
                        " Dr.R.Rajadevi ",
                        style: GoogleFonts.itim(
                            fontSize: 30, color: Colors.black),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Text(
                        " Developers: ",
                        style: GoogleFonts.kalam(
                          fontSize: 30,
                          color: Colors.pink,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      SizedBox(width:30,),
                      Text(
                        " R.Ragavi ",
                        style: GoogleFonts.itim(
                            fontSize: 30, color: Colors.black),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(width:30,),
                      Text(
                        " M.Saravana Kumar ",
                        style: GoogleFonts.itim(
                            fontSize: 30, color: Colors.black),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(width:30,),
                      Text(
                        " N.Ashok ",
                        style: GoogleFonts.itim(
                            fontSize: 30, color: Colors.black),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
