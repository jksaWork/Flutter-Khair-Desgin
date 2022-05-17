import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget GetTextFiled(String title) {
  return TextFormField(
      textAlign: TextAlign.end,
      decoration: InputDecoration(
        fillColor: Color(0xFFe5f2f3),
        hintText: title,
        hintStyle: TextStyle(color: Color(0xFF4cafb4)),
        filled: true,
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Color(0xFFe5f2f3), width: 0.0)),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        isDense: true,
        contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10),
        // labelText: 'Password',
      ));
}

Widget getFiledWithContainer(title) {
  return Container(
      margin: EdgeInsets.symmetric(
        vertical: 10,
      ),
      child: GetTextFiled(title));
}

Widget SubmitButton(title, context) {
  return Container(
      child: SizedBox(
    width: double.infinity,
    height: 45,
    child: ElevatedButton(
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Color(0xFF259ea4))),
      child: Text(title),
      onPressed: () {
        print('pressed');
        Navigator.pushNamed(context, 'home');
      },
    ),
  ));
}

Widget getIcon(String title, Icons, context) {
  var ScreenSize = MediaQuery.of(context).size;
  return Container(
      width: ScreenSize.width / 6,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color(0xFFe5f2f3),
              borderRadius: BorderRadius.circular(10),
            ),
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: Center(
              child: IconTheme(
                  data: IconThemeData(color: Color(0xFF259ea4)),
                  child: Icon(Icons)),
            ),
          ),
          Text(title,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              )),
        ],
      ));
}

Widget getPageView(item) {
  return Container(
    width: 250,
    child: Card(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Column(
          children: [
            Container(
              height: 120,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: NetworkImage(item['url']),
                fit: BoxFit.fill,
              )),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    item['name'],
                    style: TextStyle(fontSize: 12),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Color(0xFF259ea4), width: 2)),
                    height: 30,
                    child: TextButton(
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                        ),
                        onPressed: () {
                          print('good');
                        },
                        child: Text(
                          'دواء',
                          style: TextStyle(color: Color(0xFF259ea4)),
                        )),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 13),
              child: Text(item['text']),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Color(0xFF259ea4), width: 2)),
                  height: 30,
                  child: TextButton(
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                      ),
                      onPressed: () {
                        print('good');
                      },
                      child: Text(
                        'تبرع الان',
                        style: TextStyle(color: Color(0xFF259ea4)),
                      )),
                )
              ],
            )
          ],
        ),
      ),
    ),
  );
}

List GetPaitons() {
  List PationList = [
    {
      'name': 'محمد اخمد ',
      'text': 'النظام الشمسية هو الاسم الذي يُطلق عادة على',
      'url':
          'https://media.istockphoto.com/photos/nurse-explaining-good-news-to-female-patient-picture-id1201050386?k=20&m=1201050386&s=612x612&w=0&h=N1MJYiAR5g7INxiaPZOrhXyszLjy9nbQxAEg44oji20=',
    },
    {
      'name': ' الكريم عوض ',
      'text': 'النظام الشمسي أو المجموعة الشمسية ة على',
      'url':
          'https://media.istockphoto.com/photos/speaking-to-the-doctor-picture-id1150732846?k=20&m=1150732846&s=612x612&w=0&h=TekJ6HPlfQUdl1bMyOBEtleDLo2aUa7l0ZyEpcfe3lY=',
    },
    {
      'name': ' ايمان عوض ',
      'text': 'النظام الشمسي أو المجموعة الشمسية هو عادة على',
      'url':
          'https://media.istockphoto.com/photos/doctor-showing-digital-tablet-to-woman-in-hospital-picture-id680482926?k=20&m=680482926&s=612x612&w=0&h=i-aic-IFUwFm0Iac8HwfAeYb4MunJtNICsUZ51AAyIA=',
    },
  ];
  return PationList;
}
