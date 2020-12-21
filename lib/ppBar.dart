import 'package:flutter/material.dart';

AppBar headerNav(
  context,
) {
  double taille = MediaQuery.of(context).size.width;
  return AppBar(
    automaticallyImplyLeading: false,
    title: Center(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.2,
            child: FlatButton(
              child: Text(
                "La ferme Deal",
                style: TextStyle(
                    fontFamily: 'Compagnon-Bold',
                    fontSize: 8 + (0.01 * taille)),
              ),
              onPressed: () {
                // Navigate to the second screen using a named route.
                Navigator.pushNamedAndRemoveUntil(
                    context, '/', (Route<dynamic> route) => false);
              },
            ),
          ),
          Row(
            children: [
              Container(
                child: FlatButton(
                  child: Text(
                    'Produits',
                    style: TextStyle(
                        fontFamily: 'Compagnon-Roman',
                        fontSize: 6 + (0.01 * taille)),
                  ),
                  onPressed: () {
                    // Navigate to the second screen using a named route.
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/second', (Route<dynamic> route) => false);
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.all(2 + (0.01 * taille)),
                child: FlatButton(
                  child: Text(
                    'Histoire',
                    style: TextStyle(
                        fontFamily: 'Compagnon-Roman',
                        fontSize: 6 + (0.01 * taille)),
                  ),
                  onPressed: () {
                    // Navigate to the second screen using a named route.

                    Navigator.pushNamedAndRemoveUntil(
                        context, '/histoire', (Route<dynamic> route) => false);
                  },
                ),
              ),
              Container(
                child: FlatButton(
                  child: Text(
                    'Partenaires',
                    style: TextStyle(
                        fontFamily: 'Compagnon-Roman',
                        fontSize: 6 + (0.01 * taille)),
                  ),
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
