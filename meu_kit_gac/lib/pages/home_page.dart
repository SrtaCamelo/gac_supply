import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
                padding: EdgeInsets.only(bottom: 16),
                child: ListTile(
                  title: Text(
                    "Bem Vindo!",
                    textAlign: TextAlign.center,
                  ),
                )),
            ElevatedButton(onPressed: () {
              Navigator.of(context).pushNamed("choose_page");
            }, child: Text("ENTRAR"))
          ],
        ),
      ),
    );
  }
}
