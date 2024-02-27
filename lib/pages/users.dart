import 'package:flutter/material.dart';
import 'package:todories/components/background.dart';
import 'package:todories/components/create_task.dart';
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
          Positioned(
              left: MediaQuery.of(context).size.width * 0.6,
              child: Column(
                children: [
                  Container(
                    // height: 64,
                    // width: 64,
                    // color: Colors.red,
                    child: HangingClock(),
                  )
                ],
              )),
          Positioned(
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20, left: 12),
                    child: Row(
                      children: [
                        Text(
                          "Welcome Home,",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'INTER'),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 12),
                    child: Row(
                      children: [
                        Text(
                          "Oriesy",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 44,
                              fontFamily: 'INTER'),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 12, top: 36),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Color(0XFFe3dddf)),
                              fixedSize: MaterialStateProperty.all<Size>(
                                Size(150, 50.0),
                              ),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(16))),
                            ),
                            onPressed: () => {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              CreateTaskPage()))
                                },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(
                                  Icons.add,
                                  color: Color(0XFF1C1C1A),
                                ),
                                Text(
                                  "Create",
                                  style: TextStyle(
                                      color: Color(0XFF1C1C1A), fontSize: 20),
                                )
                              ],
                            )),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 16, top: 36),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: 164,
                              width: 2,
                              color: Color(0XFFe3dddf),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              )),
        ],
      ),
    ));
  }
}
