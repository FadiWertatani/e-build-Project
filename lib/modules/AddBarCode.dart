import 'package:barcode_widget/barcode_widget.dart';
import 'package:e_build/modules/InColisScreen.dart';
import 'package:e_build/my_flutter_app_icons.dart';
import 'package:flutter/material.dart';

class AddBarCode extends StatefulWidget {
  @override
  _AddBarCodeState createState() => _AddBarCodeState();
}

class _AddBarCodeState extends State<AddBarCode> {
  var barcodeController = TextEditingController();

  var barcode = 'fadi';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: ListView(
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
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    color: Colors.white,
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                elevation: 6.0,
                shadowColor: Colors.orangeAccent,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: BarcodeWidget(
                    barcode: Barcode.code128(),
                    data: barcode,
                    drawText: false,
                    width: 200.0,
                    height: 200.0,
                  ),
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              Container(
                width: 400.0,
                child: TextFormField(
                  style: TextStyle(color: Colors.white),
                  cursorColor: Colors.white,
                  controller: barcodeController,
                  keyboardType: TextInputType.number,
                  onFieldSubmitted: (value) {
                    print(value);
                    setState(() {
                      barcode = value;
                    });
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => InColisScreen(
                          numColis: barcode,
                          nom: 'amel hamdi',
                          phone: '24115236',
                          prix: 29,
                        ),
                      ),
                    );
                  },
                  decoration: InputDecoration(
                    hintText: 'Code à barre',
                    hintStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 17.0,
                    ),
                    border: OutlineInputBorder(),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 13.0,
                      ),
                      child: Icon(
                        MyFlutterApp.barcode,
                        color: Colors.white,
                        size: 23.0,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
