import 'package:flutter/material.dart';
import 'dart:async';

import 'package:todories/components/splash.dart';
import 'package:todories/pages/home.dart';
import 'package:todories/pages/users.dart';

void main() {
  runApp(Todoris());
}

class Todoris extends StatelessWidget {
  const Todoris({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashWrapper(),
      color: Color(0xFF1c1c1a),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SplashWrapper extends StatefulWidget {
  @override
  _SplashWrapperState createState() => _SplashWrapperState();
}

class _SplashWrapperState extends State<SplashWrapper> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => LoginPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return SplashScreen();
  }
}
