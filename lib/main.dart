import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    Xylophone(),
  );
}

class Xylophone extends StatelessWidget {
  AudioCache player = AudioCache();
  Widget buildKey({Color color, int soundNumber}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          player.play('note$soundNumber.wav');
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.red, soundNumber: 1),
              buildKey(color: Colors.green, soundNumber: 2),
              buildKey(color: Colors.pink, soundNumber: 3),
              buildKey(color: Colors.blue, soundNumber: 4),
              buildKey(color: Colors.orange, soundNumber: 5),
              buildKey(color: Colors.yellow, soundNumber: 6),
              buildKey(color: Colors.indigo, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
