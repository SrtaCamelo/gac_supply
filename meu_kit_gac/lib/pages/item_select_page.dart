import 'package:flutter/material.dart';

class ItemSelect extends StatefulWidget {
  const ItemSelect({Key key}) : super(key: key);

  @override
  _ItemSelectState createState() => _ItemSelectState();
}

class _ItemSelectState extends State<ItemSelect> {
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
                    "Selecione os itens pedidos pelo paciênte e as quantidades",
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
