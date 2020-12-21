import 'dart:io';
import 'package:ferme/ppBar.dart';
import 'package:flutter/material.dart';

class Accueil extends StatelessWidget {
  final navigatorKey = GlobalKey<NavigatorState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    ordi() {
      return SingleChildScrollView(
        child: Row(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.1,
            ),
            Container(
              child: Expanded(
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(30.0),
                      child: Text(
                          "Un texte est une série orale ou écrite de mots perçus comme constituant un ensemble cohérent, porteur de sens et utilisant les structures propres à une langue (conjugaisons, construction et association des phrases…)1. Un texte n'a pas de longueur déterminée sauf dans le cas de poèmes à forme fixe comme le sonnet ou le haïku.  L'étude formelle des textes s'appuie sur la linguistique, qui est l'approche scientifique du langage. ",
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.headline5),
                    ),
                    Divider(color: Colors.grey[300]),
                  ],
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.1,
            ),
          ],
        ),
      );
    }

    return Scaffold(
      appBar: headerNav(context),
      body: ordi(),
    );
  }
}
