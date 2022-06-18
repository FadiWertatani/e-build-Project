import 'package:flutter/material.dart';

class MyProfileScreen extends StatefulWidget {
  @override
  _MyProfileScreenState createState() => _MyProfileScreenState();
}

class _MyProfileScreenState extends State<MyProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Container(
              height: 350.0,
              width: double.infinity,
            ),
            Container(
              height: 175.0,
              width: double.infinity,
              color: Color(0xff2a756e),
            ),
            Positioned(
              top: 100.0,
              left: 15.0,
              right: 15.0,
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
            Positioned(
              top: 50.0,
              left: (MediaQuery.of(context).size.width / 2 - 50.0),
              child: Container(
                height: 100.0,
                width: 100.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.0),
                  image: DecorationImage(
                    image: AssetImage('assets/chris.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 165.0,
              left: (MediaQuery.of(context).size.width / 2) - 105.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Fadi Wertatani',
                    style: TextStyle(
                        fontFamily: 'Comfortaa',
                        fontWeight: FontWeight.bold,
                        fontSize: 17.0),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    'WertataniFadi@gmail.com',
                    style: TextStyle(
                        fontFamily: 'Comfortaa',
                        fontWeight: FontWeight.bold,
                        fontSize: 17.0,
                        color: Colors.grey),
                  ),
                  SizedBox(height: 12.0),
                  Row(
                    children: <Widget>[
                      FlatButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7.0),
                        ),
                        color: Colors.orangeAccent,
                        onPressed: () {},
                        child: Text(
                          'Edit',
                          style: TextStyle(
                              fontFamily: 'Comfortaa',
                              fontWeight: FontWeight.bold,
                              fontSize: 15.0,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
        SizedBox(height: 10.0),
        Column(
          children: <Widget>[
            menuCard(
                'Numéro de Cin : ', Icon(Icons.person_outline), '72263040'),
            SizedBox(height: 12.0),
            menuCard(
              'Numéro de Téléphone : ',
              Icon(Icons.phone_outlined),
              '98157880',
            ),
            SizedBox(height: 12.0),
            menuCard(
              'Hub : ',
              Icon(Icons.calendar_today_outlined),
              'BEN AROUS',
            ),
            SizedBox(height: 12.0),
            menuCard(
              'Role : ',
              Icon(Icons.calendar_today_outlined),
              'Livreur',
            ),
          ],
        ),
      ],
    );
  }

  Widget menuCard(
    String title,
    Widget iconName,
    String type,
  ) {
    return Padding(
      padding: EdgeInsets.only(left: 15.0, right: 15.0),
      child: Material(
        borderRadius: BorderRadius.circular(7.0),
        elevation: 4.0,
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7.0), color: Colors.white),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                SizedBox(width: 10.0),
                iconName,
                SizedBox(width: 10.0),
                Expanded(
                  child: Text(
                    title,
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  type,
                  style: TextStyle(
                    color: Color(0xff505050),
                    fontSize: 14.0,
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
