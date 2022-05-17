import 'package:flutter/material.dart';
import './Auth/Login.dart';
import 'package:easy_splash_screen/easy_splash_screen.dart';
import './home.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  SplashPage({Key? key}) : super(key: key);
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      logo: Image.asset('assets/icons/logo.png'),
      backgroundColor: Color(0xFFfbfbfb),
      showLoader: true,
      // loadingText: Text("Loading..."),
      navigator: LoginPage(),
      durationInSeconds: 10,
    );
  }
}
