import 'package:flutter/material.dart';
import 'package:khaier/Screens/components/JksaFiled.dart';

class SingUp extends StatelessWidget {
  const SingUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var ScreenSize = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
      padding: EdgeInsets.all(20),
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: ScreenSize.height,
        ),
        child: Column(
          children: <Widget>[
            Container(
              height: 100,
              width: double.infinity,
              padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/icons/logo.png',
                      width: 100,
                    ),
                  ]),
            ),
            Container(
                padding: EdgeInsets.all(3),
                child: Column(
                  children: [
                    Container(
                        padding: EdgeInsets.fromLTRB(1, 5, 1, 7),
                        child: Text(
                          'انشاء الحساب',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 25),
                        )),
                    getFiledWithContainer('الاسم'),
                    getFiledWithContainer('البريد الالكتروني'),
                    getFiledWithContainer(' كلمه السر'),
                    getFiledWithContainer('  تاكيد كلمه السر'),
                    getFiledWithContainer('رقم الموبايل '),
                    getFiledWithContainer('العنوان'),
                    SubmitButton('انشاء الحساب', context),
                  ],
                )),
          ],
        ),
      ),
    ));
  }
}
