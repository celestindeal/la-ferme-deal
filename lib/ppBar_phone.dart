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
            "La ferme Deal",
            style: TextStyle(
              fontFamily: 'Compagnon-Bold',
            ),
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
        icon: const Icon(Icons.sports_bar_sharp),
        onPressed: () {
          Navigator.pushNamedAndRemoveUntil(
              context, '/produit', (Route<dynamic> route) => false);
        },
      ),
      IconButton(
        icon: const Icon(Icons.archive),
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
    ],
    backgroundColor: rouge_ferme,
  );
}
