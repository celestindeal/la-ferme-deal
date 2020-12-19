import 'package:flutter/material.dart';

class Accueil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Acceuil'),
      ),
      body: Column(
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
      ),
    );
  }
}
