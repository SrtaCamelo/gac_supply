import 'package:flutter/material.dart';
import 'package:meu_kit_gac/model/itemSelection.dart';

class ItemSelect2 extends StatefulWidget {
  const ItemSelect2({Key key}) : super(key: key);

  @override
  _ItemSelect2State createState() => _ItemSelect2State();
}

class _ItemSelect2State extends State<ItemSelect2> {
  dynamic patient;
  @override
  void didChangeDependencies() {
    patient = ModalRoute.of(context).settings.arguments;
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }
  dynamic items;

  @override
  void initState() {
      items = [
      Item(title: "Fralda Infantil P"),
      Item(title: "Fralda Infantil M"),
      Item(title: "Fralda Infantil G"),
      Item(title: "Fralda Adulta"),
      Item(title: "Escova de Dente Infantil"),
      Item(title: "Escova de Dente Adulta"),
      Item(title: "Pasta de Dente Infantil"),
      Item(title: "Pasta de Dente Adulta"),
      Item(title: "Shampoo"),
      Item(title: "Condicionador"),
      Item(title: "Sabonete Infantil"),
      Item(title: "Sabonete Adulto"),
      Item(title: "Creme Hidratante"),
      Item(title: "Desodorante"),
      Item(title: "Lenço Humedecido"),
      Item(title: "Algodão"),
      Item(title: "Sabão (lavar roupas"),
    ];

    super.initState();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text("Selecione os Itens para o paciênte"),
    ),
    body: ListView(
      children: [
        //buildCheckbox(),
        ...items.map(builSingleCheckbox).toList(),
      ],
    ),
    bottomSheet: Container(
      padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(onPressed: () {
          dynamic patient_request = {
            "patient": patient,
            "list": items,
          };

          Navigator.of(context).pushNamed("item_confirm_page", arguments: patient_request);

        }, child: Text("Confirmar")),
      ),
    ),
  );

  Widget builSingleCheckbox(Item item) => buildCheckbox(
        item: item,
        onClicked: () {
          final newValue = !item.value;
          setState(() {
            item.value = newValue;
          });
        },
      );

  Widget buildCheckbox({
      @required Item item,
      @required VoidCallback onClicked,

  }) =>
      ListTile(
      onTap: onClicked,
      leading: Checkbox(
        value: item.value,
        onChanged: (value){
          setState(() {
            item.value = value;
          });
        },
        ),
        title: Text(
          item.title,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        )
      );

}
