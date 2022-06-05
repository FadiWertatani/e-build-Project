import 'package:e_build/modules/MenuScreen.dart';
import 'package:e_build/modules/ProfileScreen.dart';
import 'package:flutter/material.dart';

import 'modules/PickUpScreen.dart';
import 'modules/RunSheetScreen.dart';

class TotalColisScreen extends StatefulWidget {
  const TotalColisScreen({Key? key}) : super(key: key);

  @override
  _TotalColisScreenState createState() => _TotalColisScreenState();
}

class _TotalColisScreenState extends State<TotalColisScreen> {
  int currentIndex = 2;

  List<Widget> screens = [
    MenuScreen(),
    PickUpScreen(),
    RunSheetScreen(),
    ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff282828),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          var name = await getName();
          print(name);
        },
        child: Icon(
          Icons.qr_code_2,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.menu,
            ),
            label: 'Menu',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.select_all_sharp,
            ),
            label: 'Pick-Up',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.list,
            ),
            label: 'Run Sheet',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline,
            ),
            label: 'Profile',
          ),
        ],
      ),
      body: screens[currentIndex],
    );
  }

  Future<String> getName() async {
    return 'Fadi Wertatani';
  }
}
