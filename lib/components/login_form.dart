import 'package:flutter/material.dart';

Row LoginForm({String hintText = 'Username'}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        alignment: Alignment.bottomCenter,
        height: 48,
        width: 408,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Color(0XFFe3dddf).withOpacity(0.2)),
        child: TextFormField(
          decoration: InputDecoration(
            filled: true,
            fillColor: Color(0XFFe3dddf).withOpacity(0.2),
            hoverColor: Color(0XFFe3dddf).withOpacity(0.5),
            border: InputBorder.none,
            enabledBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(color: Color(0XFFe3dddf).withOpacity(0.5)),
                borderRadius: BorderRadius.circular(16)),
            hintText: hintText,
            hintStyle: TextStyle(color: Color(0XFF1C1C1A)),
            focusedBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(color: Color(0XFFe3dddf).withOpacity(0.5)),
                borderRadius: BorderRadius.circular(16)),
          ),
        ),
      ),
    ],
  );
}
