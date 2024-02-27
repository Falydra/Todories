import 'package:flutter/material.dart';
import 'package:todories/components/time.dart';

Column HangingClock() {
  return Column(
    children: [
      Container(
        color: Color(0XFFe3dddf),
        height: 240,
        width: 6,
      ),
      Container(
        height: 84,
        width: 84,
        decoration:
            BoxDecoration(shape: BoxShape.circle, color: Color(0XFFe3dddf)),
        child: Center(child: CurrentTime()),
      )
    ],
  );
}
