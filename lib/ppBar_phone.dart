import 'package:ferme/main.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

AppBar headerphone(
  context,
) {
  double taille = MediaQuery.of(context).size.width;
  return AppBar(
    title: FlatButton(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // Image.asset(
          //   'img/vache.jpg',
          //   width: 40,
          //   height: 40,
          // ),
          Text(
            "La ferme Déal",
            style: TextStyle(fontFamily: 'Compagnon-Medium', fontSize: 18),
          ),
        ],
      ),
      onPressed: () {
        // Navigate to the second screen using a named route.
        Navigator.pushNamedAndRemoveUntil(
            context, '/', (Route<dynamic> route) => false);
      },
    ),
    actions: <Widget>[
      IconButton(
        icon: const Icon(Icons.shopping_basket),
        onPressed: () {
          Navigator.pushNamedAndRemoveUntil(
              context, '/produit', (Route<dynamic> route) => false);
        },
      ),
      IconButton(
        icon: const Icon(Icons.house),
        onPressed: () {
          Navigator.pushNamedAndRemoveUntil(
              context, '/histoire', (Route<dynamic> route) => false);
        },
      ),
      IconButton(
        icon: const Icon(Icons.where_to_vote_outlined),
        onPressed: () {
          Navigator.pushNamedAndRemoveUntil(
              context, '/vendeur', (Route<dynamic> route) => false);
        },
      ),
      IconButton(
          icon: Image.asset(
            'img/facebook.jpg',
          ),
          onPressed: () async {
            if (await canLaunch(
                "https://www.facebook.com/La-ferme-D%C3%A9al-357148127955007")) {
              await launch(
                  "https://www.facebook.com/La-ferme-D%C3%A9al-357148127955007");
            }
          }),
    ],
    backgroundColor: rouge_ferme,
  );
}
