import 'package:flutter/material.dart';

import 'package:delicious/pages/landing.dart';
import 'package:delicious/pages/home.dart';
import 'package:delicious/pages/login.dart';
import 'package:delicious/pages/signup.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => Landing(),
        '/home': (context) => Home(),
        '/login': (contect) => Login(),
        '/signup': (contect) => Signup(),
      },
      initialRoute: '/',
      theme: ThemeData(
        accentColor: Color(0xFFD75C41),
        inputDecorationTheme: InputDecorationTheme(
          hintStyle: TextStyle(
            color: Colors.white,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 2,
              color: Colors.white,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 2,
              color: Colors.yellow,
            ),
          ),
          errorStyle: TextStyle(color: Colors.yellow),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 3,
              color: Colors.white,
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 3,
              color: Colors.yellow,
            ),
          ),
        ),
      ),
    );
  }
}
