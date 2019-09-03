import 'package:flutter/material.dart';
import 'dart:math' as math;

class CameraPage extends StatefulWidget {
  const CameraPage({Key key}) : super(key: key);

  @override
  _CameraPage createState() => _CameraPage();
}

class _CameraPage extends State<CameraPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: <Widget>[
            Icon(Icons.camera_alt, color: Colors.black),
            SizedBox(width: 8.0,),
            Image.asset(
              'assets/logos/logofont.png',
              height: 34,
            ),
          ],
        ),
        actions: <Widget>[
          Padding(
            child: Transform.rotate(
              child: Icon(Icons.send, color: Colors.black),
              angle: -math.pi / 4.0,
            ),
            padding: EdgeInsets.only(right: 12.0),
          )
        ],
      ),
    );
  }
}
