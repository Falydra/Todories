import 'package:flutter/material.dart';
import 'package:todories/pages/home.dart';

Row AlternateLogin(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
          alignment: Alignment.centerRight,
          height: 48,
          width: 408,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Color(0XFFe3dddf).withOpacity(1)),
          child: ElevatedButton(
            onPressed: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomePage())),
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all(Color(0XFFe3dddf).withOpacity(1)),
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
                Container(
                  height: 24,
                  width: 24,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/image/Google.png"),
                        scale: 0.5),
                  ),
                ),
                Text(
                  "  Login with Google Account",
                  style: TextStyle(
                      fontFamily: 'INTER',
                      fontWeight: FontWeight.w400,
                      color: Color(0XFF1c1c1a)),
                )
              ],
            ),
          )),
    ],
  );
}
