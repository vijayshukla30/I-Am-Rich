import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void playSound(String file) {
    final player = AudioCache();
    player.play(file);
  }

  Expanded buildKey({Color color, int number}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound('note$number.wav');
        },
        child: Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            buildKey(color: Colors.red, number: 1),
            buildKey(color: Colors.orange, number: 2),
            buildKey(color: Colors.yellow, number: 3),
            buildKey(color: Colors.green, number: 4),
            buildKey(color: Colors.blue, number: 5),
            buildKey(color: Colors.indigo, number: 6),
            buildKey(color: Colors.purple, number: 7),
          ],
        )),
      ),
    );
  }
}
