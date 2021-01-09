import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
            width: MediaQuery.of(context).size.width * 0.3,
            child: FlatButton(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Image.asset(
                  //   'img/vache.jpg',
                  //   width: 40,
                  //   height: 40,
                  // ),
                  Text("La ferme Deal",
                      style: Theme.of(context).textTheme.headline1),
                ],
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
                        context, '/produit', (Route<dynamic> route) => false);
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
              IconButton(
                  icon: Image.asset(
                    'img/facebook.jpg',
                    width: taille * 0.1,
                    height: taille * 0.1,
                  ),
                  onPressed: () async {
                    if (await canLaunch(
                        "https://www.facebook.com/La-ferme-D%C3%A9al-357148127955007")) {
                      await launch(
                          "https://www.facebook.com/La-ferme-D%C3%A9al-357148127955007");
                    }
                  }),
            ],
          ),
        ],
      ),
    ),
  );
}
