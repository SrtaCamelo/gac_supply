import 'package:flutter/material.dart';
import 'package:meu_kit_gac/service/databases.dart';

class AllRequests extends StatefulWidget {
  @override
  _AllRequestsState createState() => _AllRequestsState();
}

class _AllRequestsState extends State<AllRequests> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: FutureBuilder(
          future: Store.get("patient_list"),
          builder: (BuildContext context, AsyncSnapshot snapshot){
            return ListView.builder(
                itemCount: snapshot.data,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text(snapshot.data["patient"]),
                  );

                });
          },

         ),
        ),

      );
  }
}
