import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(Xylophone());

class Xylophone extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: <Widget>[
              retCont(color: Colors.red, audio: 1),
              retCont(color: Colors.orange, audio: 2),
              retCont(color: Colors.yellow, audio: 3),
              retCont(color: Colors.green, audio: 4),
              retCont(color: Colors.teal, audio: 5),
              retCont(color: Colors.blue, audio: 6),
              retCont(color: Colors.purple, audio: 7),
            ],
          ),
        ),
      ),
    );
  }

  void player(int n) {
    final player = AudioCache();
    player.play('note$n.wav');
  }

  Widget retCont({Color color, int audio}) {
    return Expanded(
      child: Container(
        width: double.infinity,
        color: color,
        child: FlatButton(
          onPressed: () {
            player(audio);
          },
        ),
      ),
    );
  }
}
