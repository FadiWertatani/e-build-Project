import 'package:e_build/models/Colis_Model.dart';
import 'package:flutter/material.dart';

class ColisScreen extends StatelessWidget {
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
      etat: 'En Cours',
    ),
    ColisModel(
      nbrColis: '4013312894',
      date: '05-03-2022',
      name: 'abed elabset bn amer',
      phone: '94191305',
      price: 32,
      etat: 'En Cours',
    ),
    ColisModel(
      nbrColis: '4013240428',
      date: '04-03-2022',
      name: 'imen elhaj',
      phone: '99929571',
      price: 132,
      etat: 'En Cours',
    ),
    ColisModel(
      nbrColis: '4013240430',
      date: '05-06-2022',
      name: 'fadi Wertatani',
      phone: '93007457',
      price: 85.6,
      etat: 'En Cours',
    ),
  ];

  bool state = true; //l'état de livraison du produit (état initial: en cour)

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff282828),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
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
                    child: Icon(
                      Icons.article_outlined,
                      color: Colors.white,
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
                              '61', //A changer
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
                              '3895.20', //A changer
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
                    child: Icon(
                      Icons.add_circle_outline,
                      color: Colors.white,
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
                                Icon(
                                  Icons.price_change_outlined,
                                  color: Colors.white,
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
                              color: state
                                  ? Colors.greenAccent
                                  : Colors.orangeAccent,
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
}
