import 'package:app_11_navigation/home.dart';
import 'package:flutter/material.dart';
import 'package:app_11_navigation/about.dart';
import 'package:app_11_navigation/contact.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: Home(), // Replace with initialRoute
      initialRoute: '/',
      // Named Routes
      routes: {
        '/' : (context) => Home(),
        '/about' : (context) => About(),
        '/contact' : (context) => Contact(),

      },
    );
  }
}
