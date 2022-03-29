import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);
  playSound(int soundNum) {
    final player = AudioCache();
    player.play('note$soundNum.wav');
  }

  Expanded buildKey({required int soundNUm, required Color color}) {
    return Expanded(
      child: GestureDetector(
        onTap: () => playSound(soundNUm),
        child: Container(
          color: color,
          margin: EdgeInsets.zero,
          padding: EdgeInsets.zero,
        ),
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
            children: [
              buildKey(soundNUm: 1, color: const Color.fromARGB(255, 0, 35, 65)),
              buildKey(soundNUm: 2, color: Colors.indigo),
              buildKey(soundNUm: 3, color: Colors.blue),
              buildKey(soundNUm: 4, color: Colors.green),
              buildKey(soundNUm: 5, color: Colors.yellow),
              buildKey(soundNUm: 6, color: Colors.orange),
              buildKey(soundNUm: 7, color: Colors.red)
            ],
          ),
        ),
      ),
    );
  }
}
