import 'package:flutter/material.dart';
import 'package:todories/components/background.dart';
import 'package:todories/components/login_box.dart';
import 'package:todories/components/hanging_clock.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Stack(
        children: [
          Background(context),
          Positioned(
            top: 0,
            bottom: 0,
            left: 0,
            right: MediaQuery.of(context).size.width * 0.65,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [LoginBox(context)],
            ),
          ),
          Positioned(
            top: 0,
            bottom: 0,
            left: MediaQuery.of(context).size.width * 0.4,
            right: 0,
            child: HangingClock(),
          ),
        ],
      ),
    ));
  }
}
