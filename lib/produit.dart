import 'package:ferme/main.dart';
import 'package:ferme/ppBar.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Produit extends StatefulWidget {
  @override
  _ProduitState createState() => _ProduitState();
}

class _ProduitState extends State<Produit> {
  List produit = [
    {"aff": "1", "img": "img/sec.jpg", "text": "sec"},
    {"aff": "1", "img": "img/demi_sec.jpg", "text": "demi-sec"},
    {"aff": "1", "img": "img/frais.jpg", "text": "frais"},
    {"aff": "1", "img": "img/brique.jpg", "text": "Brique cendrée"},
    {"aff": "1", "img": "img/coeur.jpg", "text": "coeur"},
    {"aff": "0", "img": "", "text": ""},
  ];
  @override
  Widget build(BuildContext context) {
    ordi(BuildContext context) {
      aff_produit(int i) {
        print("object");
        return Column(
          children: [
            Text(produit[i]['text']),
            Image.asset(
              produit[i]['img'],
              width: MediaQuery.of(context).size.width * 0.3,
            ),
          ],
        );
      }

      double taille = MediaQuery.of(context).size.width;
      double font = 5 + taille * 0.005;
      return Column(
        children: [
          Container(
            width: taille,
            height: MediaQuery.of(context).size.height * 0.1,
            color: Colors.red,
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              FlatButton(
                child: Text(
                  'Fromages Secs',
                  style: TextStyle(
                    fontFamily: 'Compagnon-Roman',
                    fontSize: font,
                  ),
                ),
                onPressed: () {
                  setState(() {
                    produit = [
                      {"aff": "1", "img": "img/sec.jpg", "text": "sec"},
                      {
                        "aff": "1",
                        "img": "img/demi_sec.jpg",
                        "text": "demi-sec"
                      },
                      {"aff": "1", "img": "img/frais.jpg", "text": "frais"},
                      {
                        "aff": "1",
                        "img": "img/brique.jpg",
                        "text": "Brique cendrée"
                      },
                      {"aff": "1", "img": "img/coeur.jpg", "text": "coeur"},
                      {"aff": "0", "img": "", "text": ""},
                    ];
                  });
                },
              ),
              FlatButton(
                child: Text(
                  'Fromages Blancs',
                  style: TextStyle(
                    fontFamily: 'Compagnon-Roman',
                    fontSize: font,
                  ),
                ),
                onPressed: () {
                  setState(() {
                    produit = [
                      {
                        "aff": "1",
                        "img": "img/blanc.jpg",
                        "text": "Le fromage blanc"
                      },
                      {
                        "aff": "1",
                        "img": "img/barquette.jpg",
                        "text": "Plaque de 6"
                      },
                      {"aff": "0", "img": "", "text": ""},
                      {"aff": "0", "img": "", "text": ""},
                      {"aff": "0", "img": "", "text": ""},
                      {"aff": "0", "img": "", "text": ""},
                    ];
                  });
                },
              ),
              FlatButton(
                child: Text(
                  'Fromages Spéciaux',
                  style: TextStyle(
                    fontSize: font,
                    fontFamily: 'Compagnon-Roman',
                  ),
                ),
                onPressed: () {
                  setState(() {
                    produit = [
                      {
                        "aff": "1",
                        "img": "img/specialiter.jpg",
                        "text": "échallote ....."
                      },
                      {"aff": "1", "img": "img/motte.jpg", "text": "Motte"},
                      {
                        "aff": "1",
                        "img": "img/aperi.jpg",
                        "text": "Apéri-vache"
                      },
                      {"aff": "0", "img": "", "text": ""},
                      {"aff": "0", "img": "", "text": ""},
                      {"aff": "0", "img": "", "text": ""},
                    ];
                  });
                },
              ),
              FlatButton(
                child: Text(
                  'PLateaux',
                  style: TextStyle(
                    fontSize: font,
                    fontFamily: 'Compagnon-Roman',
                  ),
                ),
                onPressed: () {
                  setState(() {
                    produit = [
                      {
                        "aff": "1",
                        "img": "img/plateau.jpg",
                        "text": "Plateau découverte"
                      },
                      {
                        "aff": "1",
                        "img": "img/plateau.jpg",
                        "text": "Plateau gourmand"
                      },
                      {"aff": "0", "img": "", "text": ""},
                      {"aff": "0", "img": "", "text": ""},
                      {"aff": "0", "img": "", "text": ""},
                      {"aff": "0", "img": "", "text": ""},
                    ];
                  });
                },
              ),
              FlatButton(
                child: Text(
                  'Produits Artisanaux ',
                  style: TextStyle(
                    fontSize: font,
                    fontFamily: 'Compagnon-Roman',
                  ),
                ),
                onPressed: () {
                  setState(() {
                    produit = [
                      {"aff": "1", "img": "img/oeuf.jpg", "text": "oeufs"},
                      {
                        "aff": "1",
                        "img": "img/miel_montagne.jpg",
                        "text": "Miel de montagne"
                      },
                      {
                        "aff": "1",
                        "img": "img/miel_fleur.jpg",
                        "text": "Miel de fleurs"
                      },
                      {"aff": "0", "img": "", "text": ""},
                      {"aff": "0", "img": "", "text": ""},
                      {"aff": "0", "img": "", "text": ""},
                    ];
                  });
                },
              ),
              FlatButton(
                child: Text(
                  'Lait',
                  style: TextStyle(
                    fontSize: font,
                    fontFamily: 'Compagnon-Roman',
                  ),
                ),
                onPressed: () {
                  setState(() {
                    produit = [
                      {"aff": "1", "img": "img/lait.jpg", "text": "Lait"},
                      {"aff": "0", "img": "", "text": ""},
                      {"aff": "0", "img": "", "text": ""},
                      {"aff": "0", "img": "", "text": ""},
                      {"aff": "0", "img": "", "text": ""},
                      {"aff": "0", "img": "", "text": ""},
                      {"aff": "0", "img": "", "text": ""},
                    ];
                  });
                },
              ),
            ]),
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: taille * 0.05,
                  ),
                  Container(
                    width: taille * 0.25,
                    child:
                        produit[0]['aff'] != 1 ? aff_produit(0) : Container(),
                  ),
                  Container(
                    width: taille * 0.05,
                  ),
                  Container(
                    width: taille * 0.25,
                    child:
                        produit[1]['aff'] != 1 ? aff_produit(1) : Container(),
                  ),
                  Container(
                    width: taille * 0.05,
                  ),
                  Container(
                    width: taille * 0.25,
                    child:
                        produit[2]['aff'] != 1 ? aff_produit(2) : Container(),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: taille * 0.05,
                  ),
                  Container(
                    width: taille * 0.25,
                    child:
                        produit[3]["aff"] != 1 ? aff_produit(3) : Container(),
                  ),
                  Container(
                    width: taille * 0.05,
                  ),
                  Container(
                    width: taille * 0.25,
                    child:
                        produit[4]["aff"] != 1 ? aff_produit(4) : Container(),
                  ),
                  Container(
                    width: taille * 0.05,
                  ),
                  Container(
                    width: taille * 0.25,
                    child: produit[5]["aff"] != 1 ? aff_produit(5) : null,
                  )
                ],
              ),
            ],
          )
        ],
      );
    }

    return Scaffold(
      appBar: headerNav(context),
      body: ResponsiveBuilder(
        builder: (context, sizingInformation) {
          // Check the sizing information here and return your UI
          if (sizingInformation.deviceScreenType == DeviceScreenType.desktop) {
            return ordi(context);
          } else if (sizingInformation.deviceScreenType ==
              DeviceScreenType.tablet) {
            return ordi(context);
          } else {
            return ordi(context);
          }
        },
      ),
    );
  }
}
