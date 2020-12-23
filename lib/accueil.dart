import 'dart:io';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:ferme/main.dart';
import 'package:ferme/ppBar.dart';
import 'package:flutter/material.dart';

class Accueil extends StatelessWidget {
  final navigatorKey = GlobalKey<NavigatorState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    ordi() {
      double taille = MediaQuery.of(context).size.width;

      return SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
                height: MediaQuery.of(context).size.height * 0.5,
                width: MediaQuery.of(context).size.width,
                child: Carousel(
                  animationDuration: const Duration(seconds: 1),
                  // showIndicator: false,
                  // borderRadius: false,
                  // moveIndicatorFromBottom: 180.0,
                  // noRadiusForIndicator: true,
                  // overlayShadowSize: 0.2,
                  images: [
                    AssetImage(
                      'img/bandeau_demi_sec.jpg',
                    ),
                    AssetImage(
                      'img/bande.jpg',
                    ),
                    AssetImage(
                      'img/bandeau-sec.jpg',
                    ),
                    AssetImage(
                      'img/camion.jpg',
                    )
                  ],
                )),
            Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.1,
                ),
                Container(
                  child: Expanded(
                    child: Column(children: [
                      Container(
                        margin: const EdgeInsets.all(30.0),
                        child: Text(
                            "Un texte est une série orale ou écrite de mots perçus comme constituant un ensemble cohérent, porteur de sens et utilisant les structures propres à une langue (conjugaisons, construction et association des phrases…)1. Un texte n'a pas de longueur déterminée sauf dans le cas de poèmes à forme fixe comme le sonnet ou le haïku.  L'étude formelle des textes s'appuie sur la linguistique, qui est l'approche scientifique du langage. ",
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.headline5),
                      ),
                      Divider(color: Colors.grey[300]),
                    ]),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.1,
                ),
              ],
            ),
            Row(
              children: [
                Divider(color: Colors.grey[300]),
              ],
            ),
            Text(
              "L'équipe",
              style: TextStyle(
                  fontFamily: 'Compagnon-Bold', fontSize: 8 + (0.01 * taille)),
            ),
            Column(children: [
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
// deux images

                Image.asset(
                  'img/pere.jpg',
                  width: MediaQuery.of(context).size.width * 0.3,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.05,
                ),
                Image.asset(
                  'img/pere.jpg',
                  width: MediaQuery.of(context).size.width * 0.3,
                ),
              ]),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.25,
                  child: Text(
                    "Un texte est une série orale ou écrite de mots perçus comme constituant un ensemble cohérent, porteur de sens et utilisant les structures propres à une langue (conjugaisons, construction et association des phrases…)1. Un texte n'a pas de longueur déterminée sauf dans le cas de poèmes à forme fixe comme le sonnet ou le haïku.",
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.1,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.25,
                  child: Text(
                    "Un texte est une série orale ou écrite de mots perçus comme constituant un ensemble cohérent, porteur de sens et utilisant les structures propres à une langue (conjugaisons, construction et association des phrases…)1. Un texte n'a pas de longueur déterminée sauf dans le cas de poèmes à forme fixe comme le sonnet ou le haïku.",
                    textAlign: TextAlign.center,
                  ),
                )
              ]),

// trois images
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Image.asset(
                  'img/pere.jpg',
                  width: MediaQuery.of(context).size.width * 0.25,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.05,
                ),
                Image.asset(
                  'img/pere.jpg',
                  width: MediaQuery.of(context).size.width * 0.25,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.05,
                ),
                Image.asset(
                  'img/pere.jpg',
                  width: MediaQuery.of(context).size.width * 0.25,
                ),
              ]),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.2,
                  child: Text(
                    "Un texte est une série orale ou écrite de mots perçus comme constituant un ensemble cohérent,",
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.10,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.2,
                  child: Text(
                    "Un texte est une série orale ou écrite de mots perçus comme constituant un ensemble cohérent,",
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.10,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.2,
                  child: Text(
                    "Un texte est une série orale ou écrite de mots perçus comme constituant un ensemble cohérent, ",
                    textAlign: TextAlign.center,
                  ),
                )
              ])
            ]),
            Container(
              color: rouge_ferme,
              height: MediaQuery.of(context).size.height * 0.1,
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  Text("numéro de télephone"),
                ],
              ),
            )
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
