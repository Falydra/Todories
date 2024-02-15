import 'package:flutter/material.dart';

Row ShapeElements() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Container(
        height: 2,
        width: 140,
        color: Color(0XFFe3dddf).withOpacity(0.5),
      ),
      // Container(
      //   height: 8,
      //   width: 8,
      //   decoration: BoxDecoration(
      //     shape: BoxShape.circle,
      //     color: Color(0XFFe3dddf).withOpacity(0.5),
      //   ),
      // ),
      Text(
        "CONTINUE WITH",
        style: TextStyle(
            fontFamily: 'INTER',
            fontWeight: FontWeight.w300,
            color: Color(0XFFe3dddf)),
      ),
      Container(
        height: 2,
        width: 140,
        color: Color(0XFFe3dddf).withOpacity(0.5),
      ),
    ],
  );
}
