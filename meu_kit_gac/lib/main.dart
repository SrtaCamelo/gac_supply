import 'package:flutter/material.dart';
import 'package:meu_kit_gac/pages/all_products_page.dart';
import 'package:meu_kit_gac/pages/all_requests_page.dart';
import 'package:meu_kit_gac/pages/choose_page.dart';
import 'package:meu_kit_gac/pages/home_page.dart';
import 'package:meu_kit_gac/pages/info_confirm_page.dart';
import 'package:meu_kit_gac/pages/item_select_page.dart';
import 'package:meu_kit_gac/pages/item_select_page2.dart';
import 'package:meu_kit_gac/pages/request_page.dart';
import 'package:meu_kit_gac/pages/temList_test_page.dart';

import 'pages/item_confirm_page.dart';void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "home",
      //initialRoute: "item_select_page2",
      routes: {
        "home": (context) => HomePage(),
        "choose_page": (context) => ChoosePage(),
        "all_products_page": (context) => AllProducts(),
        "all_requests_page": (context) => AllRequests(),
        "request_page": (context) => RequestPage(),
        "patient_info_confirm_page": (context) => InfoConfirmPage(),
        "item_select_page": (context) => ItemSelect(),
        "item_select_page2": (context) =>  ItemSelect2(),
        "item_confirm_page": (context) =>  ItemConfirm(),
      },
    );
  }
}
