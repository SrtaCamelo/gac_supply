import 'package:flutter/material.dart';
import 'package:meu_kit_gac/model/itemSelection.dart';
import 'package:meu_kit_gac/service/databases.dart';

class ItemConfirm extends StatefulWidget {
  const ItemConfirm({Key key}) : super(key: key);

  @override
  _ItemConfirmState createState() => _ItemConfirmState();
}

class _ItemConfirmState extends State<ItemConfirm> {
  @override
  Widget build(BuildContext context) {
    dynamic patient_request = ModalRoute.of(context).settings.arguments;
    List<Item> items = patient_request["list"];
    List<Item> filtered = items.where((elemento) => elemento.value).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text("Confirme os Itens selecionados"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(

              child: ListView.builder(
                  itemCount: filtered.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      title: Text(filtered[index].title),
                    );
                  }),
            ),
            ElevatedButton(onPressed: () {
              dynamic patient = patient_request["patient"];
              dynamic item_list = filtered.map((elemento) => {"title" : elemento.title} ).toList();

              dynamic patient_list = {
                "patient": patient,
                "item_list": item_list,
              };
              Store.put("patient_list",patient_list);
              Navigator.of(context).pushNamed("home");
            }, child: Text("Confirmar")),

            ElevatedButton(onPressed: () {
              Navigator.of(context).pushNamed("item_select_page2");
            }, child: Text("Alterar"))
          ],
        ),
      ),
    );
  }
}
