import 'package:flutter/material.dart';

class ChoosePage extends StatefulWidget {
  @override
  _ChoosePageState createState() => _ChoosePageState();
}

class _ChoosePageState extends State<ChoosePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(onPressed: () {
                Navigator.of(context).pushNamed("request_page");
              }, child: Text("ANOTAR PEDIDO")),

              ElevatedButton(onPressed: () {
                Navigator.of(context).pushNamed("all_requests_page");
              }, child: Text("VER PEDIDOS")),

              ElevatedButton(onPressed: () {
                Navigator.of(context).pushNamed("all_products_page");
              }, child: Text("Ver Lista Total de Pedidos"))
            ],
          ),
        )
      ),
    );
  }
}
