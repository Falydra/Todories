import 'package:flutter/material.dart';


Row Greetings() {
    return Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 72, left: 32),
                          child: Text(
                            "Welcome Home,",
                            style: TextStyle(
                                fontFamily: 'INTER',
                                color: Color(0XFFe3dddf),
                                fontSize: 36),
                          ),
                        ),
                      ],
                    );
  }