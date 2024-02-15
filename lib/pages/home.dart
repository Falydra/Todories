import 'package:flutter/material.dart';
import 'package:todories/components/create_task.dart';
import 'package:todories/components/hanging_clock.dart';
import 'package:todories/components/greetings.dart';
import 'package:todories/components/user.dart';
import 'package:todories/components/background.dart';
import 'package:todories/components/x_axis_shape.dart';
import 'package:todories/components/create_button.dart';
import 'package:todories/components/logo.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          Background(context),
          SingleChildScrollView(
            child: Positioned(
              top: 0,
              bottom: 0,
              left: 0,
              width: MediaQuery.of(context).size.width * 0.5,
              child: Column(
                children: [
                  Column(
                    children: [
                      InteractiveLogo(context),
                      Greetings(),
                      User(),
                      CreateButton(context),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 32, top: 32),
                                height: 232,
                                width: 6,
                                color: Color(0XFFe3dddf),
                              ),
                              XAxisLine(),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 0,
            bottom: 0,
            left: MediaQuery.of(context).size.width * 0.5,
            right: 0,
            child: HangingClock(),
          ),
        ],
      )),
    );
  }


}
