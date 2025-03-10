import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Magic 8 Ball'),
          centerTitle: true,
          foregroundColor: Colors.white,
          backgroundColor: Colors.teal,
        ),
        body: MagicPage(),
      ),
    );
  }
}

class MagicPage extends StatefulWidget {
  const MagicPage({super.key});

  @override
  State<MagicPage> createState() => _MagicPageState();
}

class _MagicPageState extends State<MagicPage> {
  int ballNumber = 1;
  void changeBallNumber(){
    setState(() {
        ballNumber = Random().nextInt(5) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Padding(padding: EdgeInsets.all(20.0),
              child: TextButton(
                  onPressed: () {
                    changeBallNumber();
                  },
                  child: Image.asset('assets/images/ball$ballNumber.png')),
            ),
          ),
        ],
      ),
    );
  }
}
