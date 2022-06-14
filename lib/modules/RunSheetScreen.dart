import 'package:e_build/models/RunsheetModel.dart';
import 'package:e_build/modules/ColisScreen.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class RunSheetScreen extends StatefulWidget {
  @override
  _RunSheetScreenState createState() => _RunSheetScreenState();
}

class _RunSheetScreenState extends State<RunSheetScreen> {
  TextStyle WhiteStyle = TextStyle(
    color: Colors.white,
  );

  double runSheetCompleted = 0.75;

  List<RunSheetModel> runSheets = [
    RunSheetModel(
      numRunSheet: '123456789',
      prixTotalRunSheet: 1643,
      dateRunSheet: '02-06-2022',
      nbrColis: 61,
    ),
    RunSheetModel(
      numRunSheet: '123456789',
      prixTotalRunSheet: 1643,
      dateRunSheet: '02-06-2022',
      nbrColis: 61,
    ),
    RunSheetModel(
      numRunSheet: '123456789',
      prixTotalRunSheet: 1643,
      dateRunSheet: '02-06-2022',
      nbrColis: 60,
    ),
    RunSheetModel(
      numRunSheet: '123456789',
      prixTotalRunSheet: 1643,
      dateRunSheet: '02-06-2022',
      nbrColis: 61,
    ),
    RunSheetModel(
      numRunSheet: '123456789',
      prixTotalRunSheet: 1643,
      dateRunSheet: '02-06-2022',
      nbrColis: 61,
    ),
    RunSheetModel(
      numRunSheet: '123456789',
      prixTotalRunSheet: 1643,
      dateRunSheet: '02-06-2022',
      nbrColis: 61,
    ),
    RunSheetModel(
      numRunSheet: '123456789',
      prixTotalRunSheet: 1643,
      dateRunSheet: '02-06-2022',
      nbrColis: 61,
    ),
    RunSheetModel(
      numRunSheet: '123456789',
      prixTotalRunSheet: 1643,
      dateRunSheet: '02-06-2022',
      nbrColis: 60,
    ),
    RunSheetModel(
      numRunSheet: '123456789',
      prixTotalRunSheet: 1643,
      dateRunSheet: '02-06-2022',
      nbrColis: 61,
    ),
    RunSheetModel(
      numRunSheet: '123456789',
      prixTotalRunSheet: 1643,
      dateRunSheet: '02-06-2022',
      nbrColis: 61,
    ),
    RunSheetModel(
      numRunSheet: '123456789',
      prixTotalRunSheet: 1643,
      dateRunSheet: '02-06-2022',
      nbrColis: 61,
    ),
    RunSheetModel(
      numRunSheet: '123456789',
      prixTotalRunSheet: 1643,
      dateRunSheet: '02-06-2022',
      nbrColis: 61,
    ),
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
                        'RunSheets complet :',
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
                        percent: runSheetCompleted,
                        progressColor: Colors.greenAccent,
                        backgroundColor: Color(0xFF767D80),
                        circularStrokeCap: CircularStrokeCap.round,
                        center: Text(
                          (runSheetCompleted * 100).toString() + ' %',
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
                itemBuilder: (context, index) => runSheetCard(runSheets[index]),
                separatorBuilder: (context, index) => SizedBox(
                  height: 5.0,
                ),
                itemCount: runSheets.length,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget runSheetCard(RunSheetModel runSheet) => GestureDetector(
        onTap: () {
          print("Run Sheet number : " + runSheet.numRunSheet); //A changer
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ColisScreen(
                date: runSheet.dateRunSheet,
                nbrColis: runSheet.nbrColis,
                prixTotal: runSheet.prixTotalRunSheet,
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
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Numéro du runsheet : ',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  '${runSheet.numRunSheet}', //Changeable (Numéro de runsheet)
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
                                  'Prix totale de runsheet : ',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  '${runSheet.prixTotalRunSheet}', // A changer (prix total de runsheet)
                                  style: WhiteStyle,
                                ),
                                Text(
                                  ' TND',
                                  style: WhiteStyle,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        '${runSheet.dateRunSheet}',
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
