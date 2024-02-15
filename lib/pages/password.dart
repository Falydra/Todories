import 'package:flutter/material.dart';
import 'package:todories/components/background.dart';
import 'package:todories/components/alternate_login.dart';
import 'package:todories/components/login_form.dart';
import 'package:todories/components/elements.dart';
import 'package:todories/components/animate.dart';
import 'package:todories/pages/home.dart';

class PasswordPage extends StatefulWidget {
  const PasswordPage({super.key});

  @override
  State<PasswordPage> createState() => _PasswordPageState();
}

class _PasswordPageState extends State<PasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          Background(context),
          Center(
              child: Container(
            alignment: Alignment.center,
            height: 343,
            width: 512,
            decoration: BoxDecoration(
                border: Border.all(color: Color(0XFFe3dddf)),
                backgroundBlendMode: BlendMode.screen,
                borderRadius: BorderRadius.circular(16),
                color: Color(0XFFe3dddf).withOpacity(0.2)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 36,
                  width: 36,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/image/App Logo.png",
                          ),
                          scale: 6)),
                ),
                LoginForm(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 48,
                      width: 408,
                      decoration: BoxDecoration(
                          color: Color(0XFFe3dddf),
                          borderRadius: BorderRadius.circular(16)),
                      child: ElevatedButton(
                        onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage())),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              Color(0XFFe3dddf).withOpacity(1)),
                          fixedSize: MaterialStateProperty.all<Size>(
                            Size(408, 48.0),
                          ),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(16))),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Sign Up",
                              style: TextStyle(
                                  fontFamily: 'INTER',
                                  fontWeight: FontWeight.w700,
                                  color: Color(0XFF1c1c1a)),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                ShapeElements(),
                AlternateLogin(context),
              ],
            ),
          ))
        ],
      )),
    );
  }
}
