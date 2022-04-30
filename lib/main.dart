import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';


void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({required Color color, required int soundNumber, required String name}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNumber);
        }, child: Text(name),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buildKey(color: Colors.red, soundNumber: 1, name: 'A'),
                buildKey(color: Colors.orange, soundNumber: 2, name: 'B'),
                buildKey(color: Colors.yellow, soundNumber: 3, name: 'C'),
                buildKey(color: Colors.green, soundNumber: 4, name: 'D'),
                buildKey(color: Colors.teal, soundNumber: 5, name: 'E'),
                buildKey(color: Colors.blue, soundNumber: 6, name: 'F'),
                buildKey(color: Colors.purple, soundNumber: 7, name: 'G'),
              ],
          ),
        ),
      ),
    );
  }
}