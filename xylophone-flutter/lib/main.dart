import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int id) {
    final player = new AudioCache();
    player.play('note$id.wav');
  }

  Expanded buildKey({int soundId, Color keyColor}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(soundId);
        },
        color: keyColor,
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
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(soundId: 1, keyColor: Colors.brown.shade900),
              buildKey(soundId: 2, keyColor: Colors.brown.shade800),
              buildKey(soundId: 3, keyColor: Colors.brown.shade700),
              buildKey(soundId: 4, keyColor: Colors.brown.shade600),
              buildKey(soundId: 5, keyColor: Colors.brown.shade500),
              buildKey(soundId: 6, keyColor: Colors.brown.shade400),
              buildKey(soundId: 7, keyColor: Colors.brown.shade300),
            ],
          ),
        ),
      ),
    );
  }
}
