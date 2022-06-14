import 'package:e_build/models/PickUp_Model.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import 'ColisScreen.dart';

class PickUpScreen extends StatefulWidget {
  const PickUpScreen({Key? key}) : super(key: key);

  @override
  _PickUpScreenState createState() => _PickUpScreenState();
}

class _PickUpScreenState extends State<PickUpScreen> {
  TextStyle WhiteStyle = TextStyle(
    color: Colors.white,
  );

  double pickUpCompleted = 0.75;

  List<PickUpModel> pickUps = [
    PickUpModel(
      idPickUp: '1',
      datePickUp: '02-06-2022',
      nbrColis: 60,
      prixTotalPickUp: 400.0,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  20.0,
                ),
              ),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'PickUps complet :',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                        ),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      CircularPercentIndicator(
                        animation: true,
                        animationDuration: 3000,
                        radius: 50,
                        lineWidth: 7.0,
                        percent: pickUpCompleted,
                        progressColor: Colors.greenAccent,
                        backgroundColor: Color(0xFF767D80),
                        circularStrokeCap: CircularStrokeCap.round,
                        center: Text(
                          (pickUpCompleted * 100).toString() + ' %',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                color: Colors.black12,
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                height: 1.0,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Container(
              child: ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) => PickUpCard(pickUps[index]),
                separatorBuilder: (context, index) => SizedBox(
                  height: 5.0,
                ),
                itemCount: pickUps.length,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget PickUpCard(PickUpModel pickUp) => GestureDetector(
        onTap: () {
          print("Pick Up id : " + pickUp.idPickUp); //A changer
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ColisScreen(
                date: pickUp.datePickUp,
                nbrColis: pickUp.nbrColis,
                prixTotal: pickUp.prixTotalPickUp,
              ),
            ),
          );
        },
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              20.0,
            ),
          ),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Numéro du PickUp : ',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '${pickUp.idPickUp}', //Changeable (Numéro de pickup)
                              style: WhiteStyle,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Row(
                          children: [
                            Text(
                              'Nombre totale des Colis : ',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '${pickUp.nbrColis}', // A changer (prix total de runsheet)
                              style: WhiteStyle,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        '${pickUp.datePickUp}',
                        style: WhiteStyle,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            color: Colors.black12,
          ),
        ),
      );
}
