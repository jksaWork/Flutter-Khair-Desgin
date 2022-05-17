import 'dart:ui';
import './Register.dart';
import 'package:flutter/material.dart';
import 'package:khaier/Screens/components/JksaFiled.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: EdgeInsets.all(15),
          child: Center(
              child: Column(
            children: [
              Expanded(
                  child: Center(
                child: Container(
                  child: Image.asset('assets/icons/logo.png'),
                ),
              )),
              Text(
                'تسجيل الدخول',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      Container(
                          margin: EdgeInsets.symmetric(
                            vertical: 10,
                          ),
                          child: GetTextFiled('البريد الالكتروني')),
                      Container(
                          margin: EdgeInsets.symmetric(
                            vertical: 10,
                          ),
                          child: GetTextFiled('كلمه السر')),
                      Container(
                        child: Center(
                            child: Text(
                          'هل نسيت كلمه السر',
                          style:
                              TextStyle(decoration: TextDecoration.underline),
                        )),
                      ),
                      Container(
                          child: SizedBox(
                        width: double.infinity,
                        height: 45,
                        child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Color(0xFF259ea4))),
                          child: Text('تسجيل دخول'),
                          onPressed: () {
                            print('pressed');
                            Navigator.pushReplacementNamed(context, 'home');
                          },
                        ),
                      )),
                      Container(
                        margin: EdgeInsets.all(10),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, 'register');
                                },
                                child: Text('انشاء حساب',
                                    textAlign: TextAlign.end,
                                    style: TextStyle(color: Color(0xFF4cafb4))),
                              ),
                              Text(' ليس لديك حساب ؟'),
                            ]),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Text(
                              'او استمر عبر',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: EdgeInsets.all(5),
                                    child:
                                        Image.asset('assets/icons/google.png'),
                                  ),
                                  Container(
                                    margin: EdgeInsets.all(5),
                                    child: Image.asset(
                                        'assets/icons/faceboock.png'),
                                  ),
                                ])
                          ],
                        ),
                      )
                    ],
                  ))
            ],
          ))),
    );
  }
}
