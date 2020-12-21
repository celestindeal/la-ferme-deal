import 'package:flutter/material.dart';

AppBar headerNav(
  context,
) {
  return AppBar(
    automaticallyImplyLeading: false,
    title: Center(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pushNamedAndRemoveUntil(
                  context, '/', (Route<dynamic> route) => false);
            },
            child: Text("La ferme Deal",
                style: Theme.of(context).textTheme.headline1),
          ),
          Row(
            children: [
              Center(
                child: FlatButton(
                  child: Text('Produit'),
                  onPressed: () {
                    // Navigate to the second screen using a named route.
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/second', (Route<dynamic> route) => false);
                  },
                ),
              ),
              Center(
                child: FlatButton(
                  child: Text('Histoire'),
                  onPressed: () {
                    // Navigate to the second screen using a named route.

                    Navigator.pushNamedAndRemoveUntil(
                        context, '/histoire', (Route<dynamic> route) => false);
                  },
                ),
              ),
              Center(
                child: FlatButton(
                  child: Text('Vendeur'),
                  onPressed: () {
                    // Navigate to the second screen using a named route.

                    Navigator.pushNamedAndRemoveUntil(
                        context, '/vendeur', (Route<dynamic> route) => false);
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
