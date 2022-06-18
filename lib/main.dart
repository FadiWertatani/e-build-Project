import 'package:e_build/layout/TotalColis_Screen.dart';
import 'package:flutter/material.dart';

import 'modules/InColisScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TotalColisScreen(),
    );
  }
}
