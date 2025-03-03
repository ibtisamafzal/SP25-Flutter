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
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dice Game'),
          centerTitle: true,
          foregroundColor: Colors.white,
          backgroundColor: Colors.red,
        ),
        body: DicePage(), // Calling a Stateless Class
      ),
    );
  }
}

class DicePage extends StatelessWidget {
  const DicePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            // flex: 2,
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: TextButton(
                  onPressed: () {
                  },
                  child: Image.asset('images/dice1.png')
              ),
            ),
          ),

          Expanded(
            // flex: 1,
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: TextButton(
                  onPressed: () {
                  },
                  child: Image.asset('images/dice1.png')
              ),
            ),
          ),
        ],
      ),
    );
  }
}
