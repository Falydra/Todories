import 'dart:async';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CurrentTime extends StatefulWidget {
  @override
  _CurrentTimeState createState() => _CurrentTimeState();
}

class _CurrentTimeState extends State<CurrentTime> {
  String _currentTime = '';

  @override
  void initState() {
    super.initState();
    _updateTime();
    // Update the time every minute
    Timer.periodic(Duration(minutes: 1), (Timer timer) => _updateTime());
  }

  void _updateTime() {
    setState(() {
      _currentTime = DateFormat.Hm()
          .format(DateTime.now()); // Hm formats the time as hour:minute
    });
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      _currentTime,
      style: TextStyle(
          fontFamily: 'INTER',
          color: Color(0XFF1C1C1A),
          fontSize: 26,
          fontWeight: FontWeight.w700),
    );
  }
}
