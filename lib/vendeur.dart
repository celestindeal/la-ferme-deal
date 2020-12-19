import 'package:flutter/material.dart';

class Vendeur extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List client = [
      {"nom": "tkt", "phone": "55413"},
      {"nom": "tkt", "phone": "55413"},
      {"nom": "tkt", "phone": "55413"},
      {"nom": "tkt", "phone": "55413"},
      {"nom": "tkt", "phone": "55413"},
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("Vendeur"),
      ),
      body: ListView.builder(
          itemCount: client.length,
          itemBuilder: (BuildContext context, int i) {
            return Row(
              children: [
                Text(client[i]["nom"]),
                Text(client[i]["phone"]),
              ],
            );
          }),
    );
  }
}
