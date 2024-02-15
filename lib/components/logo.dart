import 'package:flutter/material.dart';
import 'package:todories/pages/home.dart';

Row InteractiveLogo(BuildContext context) {
    return Row(
                      children: [
                        InkWell(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => HomePage()))),
                          child: Container(
                            margin: EdgeInsets.only(left: 32, top: 32),
                            alignment: Alignment.center,
                            height: 48,
                            width: 48,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/image/App Logo.png"),
                                    scale: 1)),
                          ),
                        )
                      ],
                    );
  }