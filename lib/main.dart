import 'package:flutter/material.dart';
import './pages/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
            primarySwatch: Colors.blue,
            appBarTheme: AppBarTheme(color: Colors.grey[100]),
            iconTheme: IconThemeData(color: Colors.black),
            backgroundColor: Colors.white,
            fontFamily: 'Roboto2',
            textTheme: TextTheme(
              display4: TextStyle(
                  inherit: true,
                  color: Colors.black87,
                  fontWeight: FontWeight.w500),
              display3: TextStyle(
                  inherit: true,
                  color: Colors.black87,
                  fontWeight: FontWeight.w500),
              display2: TextStyle(
                  inherit: true,
                  color: Colors.black87,
                  fontWeight: FontWeight.w500),
              display1: TextStyle(
                  inherit: true,
                  color: Colors.black87,
                  fontWeight: FontWeight.w500),
              headline: TextStyle(
                  inherit: true,
                  color: Colors.black,
                  fontWeight: FontWeight.w500),
              title: TextStyle(
                  inherit: true,
                  color: Colors.black,
                  fontWeight: FontWeight.w500),
              subhead: TextStyle(
                  inherit: true,
                  color: Colors.black,
                  fontWeight: FontWeight.w400),
              body2: TextStyle(
                  inherit: true,
                  color: Colors.black,
                  fontWeight: FontWeight.w500),
              body1: TextStyle(
                  inherit: true,
                  color: Colors.black,
                  fontWeight: FontWeight.w400),
              caption: TextStyle(
                inherit: true,
                color: Colors.black38,
              ),
              button: TextStyle(
                inherit: true,
                color: Colors.black,
              ),
              subtitle: TextStyle(
                  inherit: true,
                  color: Colors.grey,
                  fontWeight: FontWeight.w400),
              overline: TextStyle(
                inherit: true,
                color: Colors.black,
              ),
            )),
        home: HomePage());
  }
}
