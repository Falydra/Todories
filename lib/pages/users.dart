import 'package:flutter/material.dart';
import 'package:todories/components/background.dart';
import 'package:todories/components/login_box.dart';
import 'package:todories/components/hanging_clock.dart';
import 'package:todories/components/login_form.dart';

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
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  width: 272,
                  height: 440,
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Color(0XFFe3dddf))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        alignment: Alignment.bottomCenter,
                        height: 48,
                        width: 408,
                        margin: EdgeInsets.only(left: 8, right: 8),
                        decoration: BoxDecoration(
                          border: Border.symmetric(vertical: BorderSide.none),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(16),
                              topRight: Radius.circular(16)),
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0XFFe3dddf).withOpacity(0.5),
                                  width: 1),
                            ),
                            hintText: 'hintText',
                            hintStyle: TextStyle(color: Color(0XFFe3dddf)),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    ));
  }
}
