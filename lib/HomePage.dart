import 'package:flutter/material.dart';
import 'numberAudio.dart';
import 'package:audioplayers/audio_cache.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  AudioCache audioPlayer =AudioCache(); 
  List<NumberAudio> audiolist = [
    NumberAudio("one.wav", Colors.red, "One"),
    NumberAudio("two.wav", Colors.blue, "Two"),
    NumberAudio("three.wav", Colors.green, "Three"),
    NumberAudio("four.wav", Colors.orange, "Four"),
    NumberAudio("five.wav", Colors.pink, "Five"),
    NumberAudio("six.wav", Colors.brown, "Six"),
    NumberAudio("seven.wav", Colors.grey, "Seven"),
    NumberAudio("eight.wav", Colors.teal, "Eight"),
    NumberAudio("nine.wav", Colors.purple, "Nine"),
    NumberAudio("ten.wav", Colors.blueGrey, "Ten"),
  ];
  play(String uri){
    audioPlayer.play(uri);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Spanish Numbers"),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              Image(
                image: AssetImage("images/logo.png"),
              ),
              Expanded(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 10.0,
                    childAspectRatio: 2.0,
                  ),
                  itemCount: this.audiolist.length,
                  itemBuilder: (context,i) => SizedBox(
                    child: RaisedButton(
                      onPressed: (){
                        play(audiolist[i].audioURI);
                      },
                      color: audiolist[i].buttonColor,
                      child: Text(
                        "${audiolist[i].btnText}",
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    
                  )
                )
              )
            ],
          ),
        ),
      ),
      
    );
  }
}