import 'package:e_build/models/Colis_Model.dart';
import 'package:e_build/modules/InColisScreen.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class ColisScreen extends StatefulWidget {
  final String date;
  final int nbrColis;
  final double prixTotal;

  ColisScreen({
    required this.date,
    required this.nbrColis,
    required this.prixTotal,
  });

  @override
  _ColisScreenState createState() => _ColisScreenState(prixTotal);
}

class _ColisScreenState extends State<ColisScreen> {
  TextStyle WhiteStyle = TextStyle(
    color: Colors.white,
  );

  List<ColisModel> colis = [
    ColisModel(
      nbrColis: '4013072586',
      date: '02-03-2022',
      name: 'amel mhamdi',
      phone: '24115236',
      price: 29,
      etat: 'En Cours',
    ),
    ColisModel(
      nbrColis: '4013312892',
      date: '05-03-2022',
      name: 'asma mnai',
      phone: '52093165',
      price: 51,
      etat: 'Retour',
    ),
    ColisModel(
      nbrColis: '4013312894',
      date: '05-03-2022',
      name: 'abed elabset bn amer',
      phone: '94191305',
      price: 32,
      etat: 'Livré',
    ),
    ColisModel(
      nbrColis: '4013240428',
      date: '04-03-2022',
      name: 'imen elhaj',
      phone: '99929571',
      price: 132,
      etat: 'A vérifier',
    ),
    ColisModel(
      nbrColis: '4013240430',
      date: '05-06-2022',
      name: 'fadi Wertatani',
      phone: '93007457',
      price: 85.6,
      etat: 'Au depot',
    ),
  ];

  int currentState = 1;
  List<String> state = [
    'Au depot',
    'En cours',
    'Livré',
    'A vérifier',
    'Retour',
  ];

  double count = 0;
  Color currentColor = Colors.greenAccent;

  late double prixTotal;

  _ColisScreenState(double prixTotal) {
    this.prixTotal = prixTotal;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff282828),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  color: Colors.white,
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'Bon de sortie : ',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '4 Juin 2022', //A changer
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              'Livreur : ',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              'Banlieu', //A changer
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    alignment: AlignmentDirectional.centerEnd,
                    child: IconButton(
                      onPressed: () {
                        print('Read more');
                      },
                      icon: Icon(
                        Icons.library_books_outlined,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 15.0,
              ),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'Totale colis : ',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30.0,
                              ),
                            ),
                            Text(
                              '${colis.length.toString()}', //A changer
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30.0,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              'Montant total : ',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              '$prixTotal', //A changer
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              'TND', //A changer
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    alignment: AlignmentDirectional.centerEnd,
                    child: IconButton(
                      onPressed: () {
                        print('Add a colis');
                      },
                      icon: Icon(
                        Icons.add_circle_outline,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 15.0,
              ),
              Container(
                child: ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) => colisCard(colis[index]),
                  separatorBuilder: (context, index) => SizedBox(
                    height: 8.0,
                  ),
                  itemCount: colis.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget colisCard(ColisModel coli) => GestureDetector(
        onTap: () {
          print("Colis de: " + coli.name); //A changer
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => InColisScreen(
                numColis: coli.nbrColis,
                nom: coli.name,
                phone: coli.phone,
                prix: coli.price,
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          '${coli.nbrColis}', //A changer
                          style: WhiteStyle,
                        ),
                      ),
                      Text(
                        '${coli.date}', //Changeable
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
                                  '${coli.name}', //Changeable
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
                                  '${coli.phone}', //Changeable
                                  style: WhiteStyle,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 8.0,
                            ),
                            Row(
                              children: [
                                Transform(
                                  //flip the icon
                                  alignment: Alignment.center,
                                  transform: Matrix4.rotationY(math.pi),
                                  child: Icon(
                                    Icons.local_offer_outlined,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  width: 8.0,
                                ),
                                Text(
                                  '${coli.price}', //Changeable (price)
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
                      Column(
                        children: [
                          Text(
                            'Etas du colis',
                            style: WhiteStyle,
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: checkState(coli.etat, currentColor),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Text(
                                '${coli.etat}', //Changeable (Etat du colis)
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            color: Colors.black12,
          ),
        ),
      );

  Color checkState(String state, Color currentColor) {
    switch (state) {
      case 'Au depot':
        currentColor = Colors.white;
        break;
      case 'En cours':
        currentColor = Colors.greenAccent;
        break;
      case 'Livré':
        currentColor = Colors.green;
        break;
      case 'A vérifier':
        currentColor = Colors.orangeAccent;
        break;
      case 'Retour':
        currentColor = Colors.red;
        break;
    }
    return currentColor;
  }
}
