import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

class BhaBha extends StatefulWidget {
  @override
  _BhaBhaState createState() => _BhaBhaState();
}

class _BhaBhaState extends State<BhaBha> {
  AssetsAudioPlayer audioPlayer = AssetsAudioPlayer();
  bool isPlaying = false;
  int count = 0;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bha Bha Black Sheep",
            style: GoogleFonts.roboto(
                letterSpacing: 1,
                fontSize: 25,
                color: Colors.white,
                fontWeight: FontWeight.bold)),
        centerTitle: true,
        elevation: 15,
        backgroundColor: Colors.purpleAccent,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: ()=>{
           audioPlayer.pause(),
            Navigator.pop(context),
          },
        ),
      ),
      body: ListView(
        children: [
          CarouselSlider(
            items: [
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage("images/rhymes/bhabha/1.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              //2nd Image of Slider
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage("images/rhymes/bhabha/2.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              //3rd Image of Slider
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage("images/rhymes/bhabha/baba.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              //4th Image of Slider
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage("images/rhymes/bhabha/4.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              //5th Image of Slider
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage("images/rhymes/bhabha/1.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
            //Slider Container properties
            options: CarouselOptions(
              height: 350.0,
              enlargeCenterPage: true,
              autoPlay: true,
              aspectRatio: 16,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              viewportFraction: 1.0,
            ),
          ),
          SizedBox(height: 50,),
          if (count == 1)
            Column(children: [
              AnimatedTextKit(
                animatedTexts: [
                  TypewriterAnimatedText(
                    'Baa, baa, black sheep',
                    textStyle: const TextStyle(
                      fontSize: 32.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                    speed: const Duration(milliseconds: 150),
                  ),
                  TypewriterAnimatedText(
                    'Have you any wool?',
                    textStyle: const TextStyle(
                      fontSize: 32.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                    speed: const Duration(milliseconds: 50),
                  ),
                  TypewriterAnimatedText(
                    'Yes sir, yes sir',
                    textStyle: const TextStyle(
                      fontSize: 32.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                    speed: const Duration(milliseconds: 100),
                  ),
                  TypewriterAnimatedText(
                    'Three bags full',
                    textStyle: const TextStyle(
                      fontSize: 32.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                    speed: const Duration(milliseconds: 90),
                  ),
                  TypewriterAnimatedText(
                    'One for the master',
                    textStyle: const TextStyle(
                      fontSize: 32.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                    speed: const Duration(milliseconds: 90),
                  ),
                  TypewriterAnimatedText(
                    'One for the dame',
                    textStyle: const TextStyle(
                      fontSize: 32.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                    speed: const Duration(milliseconds: 50),
                  ),
                  TypewriterAnimatedText(
                    'And one for the little boy',
                    textStyle: const TextStyle(
                      fontSize: 32.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                    speed: const Duration(milliseconds: 50),
                  ),
                  TypewriterAnimatedText(
                    'Who lives down the lane',
                    textStyle: const TextStyle(
                      fontSize: 32.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                    speed: const Duration(milliseconds: 50),
                  ),
                  TypewriterAnimatedText(
                    '',
                    textStyle: const TextStyle(
                      fontSize: 32.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                    speed: const Duration(milliseconds: 840),
                  ),
                  TypewriterAnimatedText(
                    'Baa, baa, black sheep',
                    textStyle: const TextStyle(
                      fontSize: 32.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                    speed: const Duration(milliseconds: 150),
                  ),
                  TypewriterAnimatedText(
                    'Have you any wool?',
                    textStyle: const TextStyle(
                      fontSize: 32.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                    speed: const Duration(milliseconds: 50),
                  ),
                  TypewriterAnimatedText(
                    'Yes sir, yes sir',
                    textStyle: const TextStyle(
                      fontSize: 32.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                    speed: const Duration(milliseconds: 100),
                  ),
                  TypewriterAnimatedText(
                    'Three bags full',
                    textStyle: const TextStyle(
                      fontSize: 32.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                    speed: const Duration(milliseconds: 90),
                  ),
                  TypewriterAnimatedText(
                    'One for the master',
                    textStyle: const TextStyle(
                      fontSize: 32.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                    speed: const Duration(milliseconds: 90),
                  ),
                  TypewriterAnimatedText(
                    'One for the dame',
                    textStyle: const TextStyle(
                      fontSize: 32.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                    speed: const Duration(milliseconds: 50),
                  ),
                  TypewriterAnimatedText(
                    'And one for the little boy',
                    textStyle: const TextStyle(
                      fontSize: 32.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                    speed: const Duration(milliseconds: 50),
                  ),
                  TypewriterAnimatedText(
                    'Who lives down the lane',
                    textStyle: const TextStyle(
                      fontSize: 32.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                    speed: const Duration(milliseconds: 50),
                  ),
                ],
                totalRepeatCount: count,
                pause: const Duration(milliseconds: 50),
                displayFullTextOnTap: true,
                stopPauseOnTap: false,
              ),
            ]),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(isPlaying==false ? Icons.play_arrow : Icons.pause),
          onPressed: () {
            if (isPlaying) {
              audioPlayer.pause();
              setState(() {
                isPlaying = false;
                count =0;
              });
            }
            else{
              audioPlayer.open(Audio("audio/baba.mp3"));
              audioPlayer.play();
              setState(() {
                isPlaying = true;
                count = 1;
              });
            }
          }),
    );
  }
}
