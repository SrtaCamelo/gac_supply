import 'package:flutter/material.dart';

class RequestPage extends StatefulWidget {
  @override
  _RequestPageState createState() => _RequestPageState();
}

class _RequestPageState extends State<RequestPage> {
  dynamic patient = {
    "floor": "Andar",
    "bed": "Leito",
  };
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Insira os Dados do Paciênte",
                  style: TextStyle(fontSize: 22),
                  textAlign: TextAlign.center,
                ),

                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Nome do Paciênte",
                    border: OutlineInputBorder(),

                  ),
                  onChanged: (text){
                    patient["name"] = text;
                  },
                  textInputAction: TextInputAction.done,
                ),

                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Nome do Acompanhante",
                    border: OutlineInputBorder(),

                  ),
                  onChanged: (text){
                    patient["caregiver"] = text;
                  },
                  textInputAction: TextInputAction.done,
                ),

                Row( children: [
                  Expanded(
                    child: PopupMenuButton(
                      onSelected: (text) {
                        setState(() {
                          patient["floor"] = text;
                        });

                      },
                      child: ListTile(title: Text(patient["floor"]),),
                      itemBuilder: (BuildContext context) => [
                        const PopupMenuItem(
                          value: "4",
                          child: Text('4'),
                        ),
                        const PopupMenuItem(
                          value: "5",
                          child: Text('5'),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: PopupMenuButton(
                      onSelected: (text) {
                        setState(() {
                          patient["bed"] = text;
                        });

                      },
                      child: ListTile(title: Text(patient["bed"]),),
                      itemBuilder: (BuildContext context) => [
                        const PopupMenuItem(
                          value: "1A",
                          child: Text('1A'),
                        ),
                        const PopupMenuItem(
                          value: "1B",
                          child: Text('1B'),
                        ),
                        const PopupMenuItem(
                          value: "1C",
                          child: Text('1C'),
                        ),
                        const PopupMenuItem(
                          value: "2A",
                          child: Text('2A'),
                        ),
                        const PopupMenuItem(
                          value: "2B",
                          child: Text('2B'),
                        ),
                        const PopupMenuItem(
                          value: "2C",
                          child: Text('2C'),
                        ),
                        const PopupMenuItem(
                          value: "3A",
                          child: Text('3A'),
                        ),
                        const PopupMenuItem(
                          value: "3B",
                          child: Text('3B'),
                        ),
                        const PopupMenuItem(
                          value: "3C",
                          child: Text('3C'),
                        ),
                      ],
                    ),
                  ),
                ],

                ),

                ElevatedButton(onPressed: () {
                  Navigator.of(context).pushNamed("patient_info_confirm_page", arguments: patient);
                }, child: Text("Prosseguir"))

              ],

            ),
          )
      ),
    );
  }
}


