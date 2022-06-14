import 'package:flutter/material.dart';

class BarCodeScreen extends StatelessWidget {
  const BarCodeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff282828),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Stack(
              children: [
                Column(
                  children: [
                    Positioned(
                      top: 30.0,
                      left: 30.0,
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: IconButton(
                          icon: Icon(Icons.arrow_back),
                          onPressed: () {},
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Positioned(
                      top: (MediaQuery.of(context).size.height / 2 - 50.0),
                      child: Material(
                        elevation: 3.0,
                        borderRadius: BorderRadius.circular(7.0),
                        child: Container(
                          height: 200.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7.0),
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
