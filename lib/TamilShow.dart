import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_tts/flutter_tts.dart';
class TamilShow extends StatefulWidget {
  var alphaName = "", alpha = "", content = "";
  TamilShow(this.alphaName, this.alpha, this.content);
  @override
  _TamilShowState createState() => _TamilShowState(this.alphaName, this.alpha, this.content);
}
class _TamilShowState extends State<TamilShow> {
  var alphaName = "", alpha = "", content = "";
  FlutterTts tts = FlutterTts();
  Future _speak(value) async {
    await tts.setLanguage("ta-IN");
    await tts.speak(value);
    await tts.setVolume(1.0);
    await tts.setSpeechRate(1);
    await tts.setPitch(1.0);
    await tts.setQueueMode(5);
  }

  Future _stop() async {
    await tts.stop();
  }

  void initState() {
    _stop();
    _speak(alphaName + "    " + alpha);
    super.initState();
  }
  _TamilShowState(this.alphaName, this.alpha, this.content);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: ()=>{
            _stop(),
            Navigator.pop(context),
          },
        ),
        title: Text("LEARN - " + widget.alphaName,
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
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.purple, Colors.blue])),
        child: Column(children: [
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                widget.alphaName,
                style: GoogleFonts.aBeeZee(
                  fontSize: 120,
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
                widget.alpha,
                style: GoogleFonts.aBeeZee(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width:1200,
                height: 200,
                child: Image(
                  image: AssetImage("$content"),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.deepOrangeAccent,
                  textStyle: GoogleFonts.pangolin(fontSize: 40),
                ),
                child: Text("Pronounciate"),
                onPressed: () => {
                  _speak(alphaName + "     " + alpha),
                },
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
