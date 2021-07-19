import 'package:flutter/material.dart';

class ItemSelect1 extends StatefulWidget {
  const ItemSelect1({Key key}) : super(key: key);

  @override
  _ItemSelect1State createState() => _ItemSelect1State();
}

class _ItemSelect1State extends State<ItemSelect1> {
  var qtd1 = 10;
  var qtd2 = 5;

  List intems = [
    {"name" : "Fraldas",
    "quantity" : 0 },
    {"name" : "Escova de Dentes",
      "quantity" : 0},
    {"name" : "Pasta de Dentes",
      "quantity" : 0},
  ];
  //store.set("patient_list",items)
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                      onTap: () {
                        setState(() {
                          qtd1 = qtd1 + 1;
                        });
                      },
                      child: Icon(Icons.arrow_drop_up)),
                  Text(qtd1.toString()),
                  InkWell(
                      onTap: () {
                        setState(() {
                          qtd1 = qtd1 - 1;
                        });
                      },
                      child: Icon(Icons.arrow_drop_down)),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  'Fraldas',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
