import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:todories/components/alternate_login.dart';
import 'package:todories/components/animate.dart';
import 'package:todories/components/login_form.dart';
import 'package:todories/components/elements.dart';
import 'package:todories/pages/password.dart';

Center LoginBox(BuildContext context) {
  return Center(
      child: Stack(
    children: [
      // Container(
      //     alignment: Alignment.center,
      //     height: MediaQuery.of(context).size.height,
      //     width: 512,
      //     decoration: BoxDecoration(
      //         borderRadius: BorderRadius.circular(16),
      //         color: Color(0XFFe3dddf).withOpacity(0.2)),
      //     child: BackdropFilter(
      //       filter: ImageFilter.blur(sigmaX: 60, sigmaY: 60),
      //     )),
      Container(
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height,
        width: 512,
        decoration: BoxDecoration(
            border: Border.all(color: Color(0XFFe3dddf)),
            // backgroundBlendMode: BlendMode.screen,
            borderRadius: BorderRadius.circular(16),
            color: Colors.transparent),
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
            Padding(
              padding: const EdgeInsets.only(top: 72),
              child: LoginForm(),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 72.0),
              child: LoginForm(),
            ),
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
                            builder: (context) => SlideTransitionExample())),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Color(0XFFe3dddf).withOpacity(1)),
                      fixedSize: MaterialStateProperty.all<Size>(
                        Size(408, 48.0),
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
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
      ),
    ],
  ));
}
