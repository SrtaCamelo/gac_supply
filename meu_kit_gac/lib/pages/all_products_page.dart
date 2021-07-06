import 'package:flutter/material.dart';

class AllProducts extends StatefulWidget {
  @override
  _AllProductsState createState() => _AllProductsState();
}

class _AllProductsState extends State<AllProducts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
                padding: EdgeInsets.only(bottom: 16),
                child: ListTile(
                  title: Text(
                    "Lista Total de Itens",
                    textAlign: TextAlign.center,
                  ),
                )),
            ListView.builder(
              shrinkWrap: true,
              itemCount: 5,
              itemBuilder:
            (context, index) {
              return ListTile(title: Text("T$index"),);
            },)
          ],
        ),
      ),
    );
  }
}
