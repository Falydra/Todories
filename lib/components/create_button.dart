import 'package:flutter/material.dart';
import 'package:todories/components/create_task.dart';


Row CreateButton(BuildContext context) {
  return Row(
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 32, top: 64),
        child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Color(0XFFe3dddf)),
              fixedSize: MaterialStateProperty.all<Size>(
                Size(150, 50.0),
              ),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12))),
            ),
            onPressed: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => CreateTaskPage())),
            child: Row(children: [
              Icon(
                Icons.add,
                size: 30,
                color: Color(0XFF1C1C1A),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Text(
                  "Create",
                  style: TextStyle(
                      color: Color(0XFF1C1C1A),
                      fontFamily: 'INTER',
                      fontWeight: FontWeight.w600,
                      fontSize: 20),
                ),
              ),
            ])),
      ),
    ],
  );
}
