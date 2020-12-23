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
    {"img": "img/sec.jpg", "text": "sec"},
    {"img": "img/demi_sec.jpg", "text": "demi-sec"},
    {"img": "img/frais.jpg", "text": "frais"},
    {"img": "img/brique.jpg", "text": "Brique cendrée"},
    {"img": "img/coeur.jpg", "text": "coeur"},
  ];
  @override
  Widget build(BuildContext context) {
    ordi(BuildContext context) {
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
                      {"img": "img/sec.jpg", "text": "sec"},
                      {"img": "img/demi_sec.jpg", "text": "demi-sec"},
                      {"img": "img/frais.jpg", "text": "frais"},
                      {"img": "img/brique.jpg", "text": "Brique cendrée"},
                      {"img": "img/coeur.jpg", "text": "coeur"},
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
                      {"img": "img/blanc.jpg", "text": "Le fromage blanc"},
                      {"img": "img/barquette.jpg", "text": "Plaque de 6"},
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
                      {"img": "img/specialiter.jpg", "text": "échallote ....."},
                      {"img": "img/motte.jpg", "text": "Motte"},
                      {"img": "img/aperi.jpg", "text": "Apéri-vache"},
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
                      {"img": "img/plateau.jpg", "text": "Plateau découverte"},
                      {"img": "img/plateau.jpg", "text": "Plateau gourmand"},
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
                      {"img": "img/oeuf.jpg", "text": "oeufs"},
                      {
                        "img": "img/miel_montagne.jpg",
                        "text": "Miel de montagne"
                      },
                      {"img": "img/miel_fleur.jpg", "text": "Miel de fleurs"},
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
                      {"img": "img/lait.jpg", "text": "Lait"},
                    ];
                  });
                },
              ),
            ]),
          ),
          Container(
            child: Expanded(
              child: ListView.builder(
                  itemCount: produit.length,
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int i) {
                    return Container(
                      child: Column(
                        children: [
                          Text(produit[i]['text']),
                          Image.asset(
                            produit[i]['img'],
                            width: MediaQuery.of(context).size.width * 0.3,
                          ),
                        ],
                      ),
                    );
                  }),
            ),
          ),
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
