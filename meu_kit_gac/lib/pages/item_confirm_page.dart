import 'package:flutter/material.dart';



class ItemConfirm extends StatefulWidget {
  const ItemConfirm({Key key}) : super(key: key);

  @override
  _ItemConfirmState createState() => _ItemConfirmState();
}

class _ItemConfirmState extends State<ItemConfirm> {
  @override
  Widget build(BuildContext context) {
    var items = ModalRoute.of(context).settings.arguments;

    return Container();
  }
}
