import 'package:flutter/material.dart';

class InfoConfirmPage extends StatefulWidget {
  const InfoConfirmPage({Key key}) : super(key: key);
  @override

  _InfoConfirmState createState() => _InfoConfirmState();
}

class _InfoConfirmState extends State<InfoConfirmPage> {
  dynamic patient;
  @override
  void didChangeDependencies() {
    patient = ModalRoute.of(context).settings.arguments;
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }
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
                  "Confira os Dados",
                  style: TextStyle(fontSize: 22),
                  textAlign: TextAlign.center,
                ),


                Text(
                  "Nome do Paciênte",
                  style: TextStyle(fontSize: 22),
                  textAlign: TextAlign.center,
                ),
                Text(
                  patient["name"],
                  style: TextStyle(fontSize: 22),
                  textAlign: TextAlign.center,
                ),

                Text(
                  "Nome do Acompanhante",
                  style: TextStyle(fontSize: 22),
                  textAlign: TextAlign.center,
                ),

                Text(
                  patient["caregiver"],
                  style: TextStyle(fontSize: 22),
                  textAlign: TextAlign.center,
                ),

                Row( children: [
                  Expanded(
                    child: Text(
                      patient["floor"],
                      style: TextStyle(fontSize: 22),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      patient["bed"],
                      style: TextStyle(fontSize: 22),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],

                ),

                ElevatedButton(onPressed: () {
                  Navigator.of(context).pushNamed("item_select_page");
                }, child: Text("Confirmar")),

                ElevatedButton(onPressed: () {
                  Navigator.of(context).pushNamed("request_page");
                }, child: Text("Alterar"))

              ],

            ),
          )
      ),
    );
  }
}
