import 'dart:io';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:ferme/main.dart';
import 'package:ferme/ppBar.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher.dart' as UrlLauncher;

class Accueil extends StatelessWidget {
  final navigatorKey = GlobalKey<NavigatorState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    footer() {
      //footer
      return Container(
        color: rouge_ferme,
        height: MediaQuery.of(context).size.height * 0.2,
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
//phone
            Container(
              width: MediaQuery.of(context).size.width * 0.1,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Text(
                      "numéro de télephone ",
                    ),
                    FlatButton(
                      onPressed: () {
                        UrlLauncher.launch('04 77 64 50 96');
                      },
                      child: Text(
                        "04 77 64 50 96",
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Facebook",
                    ),
                    FlatButton(
                        onPressed: () async {
                          if (await canLaunch(
                              "https://www.facebook.com/La-ferme-D%C3%A9al-357148127955007")) {
                            await launch(
                                "https://www.facebook.com/La-ferme-D%C3%A9al-357148127955007");
                          }
                        },
                        child: Text(
                          "lien de la page",
                        )),
                  ],
                ),
              ],
            ),
//heure
            Center(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Lundi au samedi: 8h - 12h et 17h - 19h"),
                      Text("Dimanche:        8h - 12h "),
                    ],
                  )
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.1,
            ),
          ],
        ),
      );
    }

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
                  showIndicator: false,
                  // borderRadius: false,
                  moveIndicatorFromBottom: 180.0,
                  noRadiusForIndicator: true,
                  overlayShadowSize: 0.2,
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
            Container(
              color: rouge_ferme,
              height: 2,
              width: MediaQuery.of(context).size.width * 0.9,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.1,
              child: Center(
                child: Text(
                  "L'équipe",
                  style: TextStyle(
                      fontFamily: 'Compagnon-Bold',
                      fontSize: 8 + (0.01 * taille)),
                ),
              ),
            ),
            Column(children: [
// deux images
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                // nom
                Container(
                    width: MediaQuery.of(context).size.width * 0.3,
                    child: Center(child: Text("data"))),
                Container(
                  width: MediaQuery.of(context).size.width * 0.05,
                ),
                Container(
                  child: Center(child: Text("data")),
                  width: MediaQuery.of(context).size.width * 0.3,
                ),
              ]),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
//image
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
//description
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
              Container(
                height: MediaQuery.of(context).size.height * 0.05,
              ),

// trois images

              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.2,
                  child: Text(
                    "data",
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.10,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.2,
                  child: Text(
                    "data,",
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.10,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.2,
                  child: Text(
                    "data ",
                    textAlign: TextAlign.center,
                  ),
                )
              ]),
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
            footer(),
          ],
        ),
      );
    }

    phone() {
      double taille = MediaQuery.of(context).size.width;

      return SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
                height: MediaQuery.of(context).size.height * 0.5,
                width: MediaQuery.of(context).size.width,
                child: Carousel(
                  animationDuration: const Duration(seconds: 1),
                  showIndicator: false,
                  // borderRadius: false,
                  moveIndicatorFromBottom: 180.0,
                  noRadiusForIndicator: true,
                  overlayShadowSize: 0.2,
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
            Container(
              color: rouge_ferme,
              height: 2,
              width: MediaQuery.of(context).size.width * 0.9,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.1,
              child: Center(
                child: Text(
                  "L'équipe",
                  style: TextStyle(
                      fontFamily: 'Compagnon-Bold',
                      fontSize: 8 + (0.01 * taille)),
                ),
              ),
            ),
            Column(children: [
// deux images

              // nom
              Container(
                  width: MediaQuery.of(context).size.width * 0.3,
                  child: Center(child: Text("data"))),
              Container(
                width: MediaQuery.of(context).size.width * 0.05,
              ),
              Container(
                child: Center(child: Text("data")),
                width: MediaQuery.of(context).size.width * 0.3,
              ),

//image
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
//description
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
              ),

              Container(
                height: MediaQuery.of(context).size.height * 0.05,
              ),

// trois images

              Container(
                width: MediaQuery.of(context).size.width * 0.2,
                child: Text(
                  "data",
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.10,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.2,
                child: Text(
                  "data,",
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.10,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.2,
                child: Text(
                  "data ",
                  textAlign: TextAlign.center,
                ),
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
              Container(
                width: MediaQuery.of(context).size.width * 0.05,
              ),
              Image.asset(
                'img/pere.jpg',
                width: MediaQuery.of(context).size.width * 0.25,
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
            ]),
            footer(),
          ],
        ),
      );
    }

    return Scaffold(
      appBar: headerNav(context),
      body: ResponsiveBuilder(
        builder: (context, sizingInformation) {
          // Check the sizing information here and return your UI
          if (sizingInformation.deviceScreenType == DeviceScreenType.desktop) {
            return ordi();
          } else if (sizingInformation.deviceScreenType ==
              DeviceScreenType.tablet) {
            return ordi();
          } else {
            return phone();
          }
        },
      ),
    );
  }
}
