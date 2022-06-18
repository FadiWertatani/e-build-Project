import 'package:e_build/modules/AddBarCode.dart';
import 'package:e_build/modules/ScanBarCode.dart';
import 'package:flutter/material.dart';

class BarcodeNavDrawer extends StatefulWidget {
  const BarcodeNavDrawer({Key? key}) : super(key: key);

  @override
  State<BarcodeNavDrawer> createState() => _BarcodeNavDrawerState();
}

class _BarcodeNavDrawerState extends State<BarcodeNavDrawer> {
  int currentIndex = 0;

  List<Widget> screens = [
    ScanBarCode(),
    AddBarCode(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff282828),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xff2a756e),
        selectedItemColor: Colors.black,
        elevation: 0.0,
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
              Icons.camera_alt_outlined,
            ),
            label: 'Scanner code à barre',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add,
            ),
            label: 'Ajouter code à barre',
          ),
        ],
      ),
      body: screens[currentIndex],
    );
  }
}
