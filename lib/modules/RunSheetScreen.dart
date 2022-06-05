import 'package:e_build/models/RunsheetModel.dart';
import 'package:flutter/material.dart';

class RunSheetScreen extends StatelessWidget {
  TextStyle WhiteStyle = TextStyle(
    color: Colors.white,
  );

  List<RunSheetModel> runSheets = [
    RunSheetModel(
      numRunSheet: '123456789',
      prixTotalRunSheet: 1643,
      dateRunSheet: '02-06-2022',
    ),
    RunSheetModel(
      numRunSheet: '123456789',
      prixTotalRunSheet: 1643,
      dateRunSheet: '02-06-2022',
    ),
    RunSheetModel(
      numRunSheet: '123456789',
      prixTotalRunSheet: 1643,
      dateRunSheet: '02-06-2022',
    ),
    RunSheetModel(
      numRunSheet: '123456789',
      prixTotalRunSheet: 1643,
      dateRunSheet: '02-06-2022',
    ),
    RunSheetModel(
      numRunSheet: '123456789',
      prixTotalRunSheet: 1643,
      dateRunSheet: '02-06-2022',
    ),
    RunSheetModel(
      numRunSheet: '123456789',
      prixTotalRunSheet: 1643,
      dateRunSheet: '02-06-2022',
    ),
    RunSheetModel(
      numRunSheet: '123456789',
      prixTotalRunSheet: 1643,
      dateRunSheet: '02-06-2022',
    ),
    RunSheetModel(
      numRunSheet: '123456789',
      prixTotalRunSheet: 1643,
      dateRunSheet: '02-06-2022',
    ),
    RunSheetModel(
      numRunSheet: '123456789',
      prixTotalRunSheet: 1643,
      dateRunSheet: '02-06-2022',
    ),
    RunSheetModel(
      numRunSheet: '123456789',
      prixTotalRunSheet: 1643,
      dateRunSheet: '02-06-2022',
    ),
    RunSheetModel(
      numRunSheet: '123456789',
      prixTotalRunSheet: 1643,
      dateRunSheet: '02-06-2022',
    ),
    RunSheetModel(
      numRunSheet: '123456789',
      prixTotalRunSheet: 1643,
      dateRunSheet: '02-06-2022',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                print("Run Sheet detected"); //A changer
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
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                '4013072586', //A changer
                                style: WhiteStyle,
                              ),
                            ),
                            Text(
                              '02-03-2022', //Changeable
                              style: WhiteStyle,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                        Container(
                          height: 1.0,
                          color: Colors.white,
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.person_outline,
                                        color: Colors.white,
                                      ),
                                      SizedBox(
                                        width: 8.0,
                                      ),
                                      Text(
                                        'amel mhamdi', //Changeable
                                        style: WhiteStyle,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 8.0,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.call_outlined,
                                        color: Colors.white,
                                      ),
                                      SizedBox(
                                        width: 8.0,
                                      ),
                                      Text(
                                        '24115236', //Changeable
                                        style: WhiteStyle,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 8.0,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.price_change_outlined,
                                        color: Colors.white,
                                      ),
                                      SizedBox(
                                        width: 8.0,
                                      ),
                                      Text(
                                        '29', //Changeable (price)
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
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  color: Colors.black12,
                ),
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
                        Icon(
                          Icons.qr_code_2,
                          color: Colors.white,
                          size: 40.0,
                        ),
                        SizedBox(
                          width: 8.0,
                        ),
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
                  Text(
                    '${runSheet.dateRunSheet}',
                    style: WhiteStyle,
                  ),
                ],
              ),
            ),
            color: Colors.black12,
          ),
        ),
      );
}
