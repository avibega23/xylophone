import 'package:flutter/material.dart ';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});
  
  void playSound(int number) {
    final player = AudioPlayer();
    player.play(AssetSource('note$number.wav'));
  }

  Expanded colorBox(Color color, int number) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          playSound(number);
        },
        child: Container(
          height: 120,
          color: color,
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
              colorBox(Colors.red,1),
              colorBox(Colors.yellow,2),
              colorBox(Colors.teal,3),
              colorBox(Colors.blue,4),
              colorBox(Colors.pink,5),
              colorBox(Colors.purple,6),
              colorBox(Colors.grey,7),
            ],
          ),
        ),
      ),
    );
  }
}
