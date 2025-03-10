import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final player = AudioPlayer();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Xylophone App'),
          centerTitle: true,
          foregroundColor: Colors.white,
          backgroundColor: Colors.blue,
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Row(
              children: [
                Expanded(
                  child: TextButton(
                      onPressed: () async {
                        await player.play(AssetSource('note1.wav'));
                      },
                      child: Image.asset('images/btn_bg.png')),
                ),
                Expanded(
                  child: TextButton(
                      onPressed: () async {
                        await player.play(AssetSource('note2.wav'));
                      },
                      child: Image.asset('images/btn_bg.png')),
                ),
                Expanded(
                  child: TextButton(
                      onPressed: () async {
                        await player.play(AssetSource('note3.wav'));
                      },
                      child: Image.asset('images/btn_bg.png')),
                ),
                Expanded(
                  child: TextButton(
                      onPressed: () async {
                        await player.play(AssetSource('note4.wav'));
                      },
                      child: Image.asset('images/btn_bg.png')),
                ),
                Expanded(
                  child: TextButton(
                      onPressed: () async {
                        await player.play(AssetSource('note5.wav'));
                      },
                      child: Image.asset('images/btn_bg.png')),
                ),
                Expanded(
                  child: TextButton(
                      onPressed: () async {
                        await player.play(AssetSource('note6.wav'));
                      },
                      child: Image.asset('images/btn_bg.png')),
                ),
                Expanded(
                  child: TextButton(
                      onPressed: () async {
                        await player.play(AssetSource('note7.wav'));
                      },
                      child: Image.asset('images/btn_bg.png')),
                ),
              ],
            ),
          ),
          ),
        ),

    );
  }
}