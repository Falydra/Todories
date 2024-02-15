import 'package:flutter/material.dart';
import 'package:todories/components/time.dart';

Column HangingClock() {
  return Column(
    children: [
      Container(
        color: Color(0XFFe3dddf),
        height: 320,
        width: 8,
      ),
      Container(
        height: 108,
        width: 108,
        decoration:
            BoxDecoration(shape: BoxShape.circle, color: Color(0XFFe3dddf)),
        child: Center(child: CurrentTime()),
      )
    ],
  );
}
