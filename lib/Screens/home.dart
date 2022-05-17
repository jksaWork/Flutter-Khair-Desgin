import 'package:flutter/material.dart';
import 'package:khaier/Screens/components/JksaFiled.dart';
import 'package:khaier/Screens/components/ButtomNav.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
            bottomNavigationBar: ButtomNav(),
            appBar: AppBar(
              iconTheme: IconThemeData(color: Colors.black),
              title: Text(
                'متبرع',
                style: TextStyle(color: Colors.black),
              ),
              backgroundColor: Colors.white,
              shadowColor: Colors.white,
            ),
            body: Center(
                child: Container(
              child: HomePageComponents(),
            )),
            endDrawer: Drawer(
              child: ListView(
                // Important: Remove any padding from the ListView.
                padding: EdgeInsets.zero,
                children: [
                  UserAccountsDrawerHeader(
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    arrowColor: Colors.white,
                    accountName: Text(
                      'محمد التجاني',
                      style: TextStyle(color: Colors.black),
                    ),
                    currentAccountPicture: FittedBox(
                      child: Image.asset('assets/icons/logo.png'),
                      fit: BoxFit.fill,
                    ),
                    accountEmail: null,
                  ),
                  ListTile(
                    title: const Text('الرئيسه'),
                    leading: Icon(Icons.home),
                    onTap: () {
                      // Update the state of the app.
                      // ...
                    },
                  ),
                  ListTile(
                    title: const Text('الملف الشخصي'),
                    leading: Icon(Icons.panorama_fisheye_outlined),
                    onTap: () {},
                  ),
                  ListTile(
                    title: const Text('متابعه الحاله'),
                    leading: Icon(Icons.comment),
                    onTap: () {
                      // Update the state of the app.
                      // ...
                    },
                  ),
                  ListTile(
                    title: const Text('محفظتي'),
                    leading: Icon(Icons.wallet_giftcard),
                    onTap: () {
                      // Update the state of the app.
                      // ...
                    },
                  ),
                  ListTile(
                    title: const Text('محفظتي'),
                    leading: Icon(Icons.wallet_membership),
                    onTap: () {
                      // Update the state of the app.
                      // ...
                    },
                  ),
                  ListTile(
                    title: const Text('من نحن'),
                    leading: Icon(Icons.question_answer),
                    onTap: () {
                      // Update the state of the app.
                      // ...
                    },
                  ),
                ],
              ),
            )));
  }
}

class HomePageComponents extends StatelessWidget {
  const HomePageComponents({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var ScreenSize = MediaQuery.of(context).size;
    String Url =
        'https://media.istockphoto.com/photos/successful-partnership-picture-id1365436662?b=1&k=20&m=1365436662&s=170667a&w=0&h=TTTy5tNN_VJEP6ZPpY1u5vo2L5fV7HxR4Oty-ofGBkc=';
    String text =
        "أكتب هنا تفاصيل الحالة أكتب هنا تفاصيل الحالة أكتب هنا تفاصيل الحالة";
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(image: NetworkImage(Url), fit: BoxFit.cover),
          ),
          height: ScreenSize.height / 6,
          child: Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                'الاعلانات',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              )),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 9),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Container(
                width: ScreenSize.width / 6,
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFF259ea4),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                      child: Center(
                        child: IconTheme(
                            data: IconThemeData(color: Colors.white),
                            child: Icon(Icons.monetization_on)),
                      ),
                    ),
                    Text('تبرع ',
                        style: TextStyle(
                          color: Color(0xFF259ea4),
                          fontWeight: FontWeight.bold,
                        )),
                  ],
                )),
            getIcon('دواء', Icons.add_circle, context),
            getIcon('طعام', Icons.fastfood, context),
            getIcon('ملابس', Icons.accessibility, context),
            getIcon('اخري', Icons.dashboard, context),
          ]),
        ),
        Container(
            child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              getPageView(GetPaitons()[0]),
              getPageView(GetPaitons()[1]),
              getPageView(GetPaitons()[1]),
            ],
          ),
        ))
      ]),
    );
  }
}
