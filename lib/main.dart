import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              playBtn(1, Colors.red),
              playBtn(2, Colors.orange),
              playBtn(3, Colors.yellow),
              playBtn(4, Colors.green),
              playBtn(5, Colors.teal),
              playBtn(6, Colors.blue),
              playBtn(7, Colors.purple),
            ],
          ),
        ),
      ),
    );
  }

  Widget playBtn(int btnNum, MaterialColor containerColor) => Expanded(
        child: TextButton(
          onPressed: () => playSound(btnNum),
          child: Container(
            color: containerColor,
          ),
        ),
      );

  void playSound(int btn) {
    final player = AudioPlayer();
    player.play(AssetSource("sounds/note$btn.wav"));
  }
}
