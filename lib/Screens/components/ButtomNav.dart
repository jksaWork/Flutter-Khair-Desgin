import 'package:flutter/material.dart';

class ButtomNav extends StatelessWidget {
  const ButtomNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Color(0xFF259ea4),
      onTap: (e) {
        print(e);
      },
      currentIndex: 1,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.transfer_within_a_station),
          label: 'تبرع',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.heart_broken),
          label: 'تطوع',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.money),
          label: 'تبرع سريع',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.supervisor_account),
          label: 'متطوع',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_balance_wallet),
          label: 'المحفظه',
        ),
      ],
    );
  }
}
