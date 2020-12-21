import 'dart:io';
import 'package:ferme/ppBar.dart';
import 'package:flutter/material.dart';

class Accueil extends StatelessWidget {
  final navigatorKey = GlobalKey<NavigatorState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    ordi() {
      return Column(
        children: [
          Center(
            child: ElevatedButton(
              child: Text('Produit'),
              onPressed: () {
                // Navigate to the second screen using a named route.
                Navigator.pushNamed(context, '/second');
              },
            ),
          ),
          Center(
            child: ElevatedButton(
              child: Text('Histoire'),
              onPressed: () {
                // Navigate to the second screen using a named route.
                Navigator.pushNamed(context, '/histoire');
              },
            ),
          ),
          Center(
            child: ElevatedButton(
              child: Text('Vendeur'),
              onPressed: () {
                // Navigate to the second screen using a named route.
                Navigator.pushNamed(context, '/vendeur');
              },
            ),
          ),
        ],
      );
    }

    return Scaffold(
      appBar: headerNav(context),
      body: ordi(),
    );
  }
}
