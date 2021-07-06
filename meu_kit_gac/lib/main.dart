import 'package:flutter/material.dart';
import 'package:meu_kit_gac/pages/all_products_page.dart';
import 'package:meu_kit_gac/pages/all_requests_page.dart';
import 'package:meu_kit_gac/pages/choose_page.dart';
import 'package:meu_kit_gac/pages/home_page.dart';
import 'package:meu_kit_gac/pages/request_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "home",
      routes: {
        "home": (context) => HomePage(),
        "choose_page": (context) => ChoosePage(),
        "all_products_page": (context) => AllProducts(),
        "all_requests_page": (context) => AllRequests(),
        "request_page": (context) => RequestPage()
      },
    );
  }
}
