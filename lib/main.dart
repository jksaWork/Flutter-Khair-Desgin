import 'package:flutter/material.dart';
import 'package:khaier/Screens/Auth/Login.dart';
import 'package:khaier/Screens/Auth/Register.dart';
import 'package:khaier/Screens/SplashScreen.dart';
import 'package:khaier/Screens/home.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SplashPage(),
    theme: ThemeData(fontFamily: 'Cairo'),
    routes: {
      'register': (context) => SingUp(),
      'home': (context) => HomePage(),
    },
  ));
}
