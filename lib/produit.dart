import 'package:ferme/main.dart';
import 'package:ferme/ppBar.dart';
import 'package:ferme/ppBar_phone.dart';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
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
    aff_produit(int i) {
      // fonction qui affiche un seul produit
      print(produit[i]['img']);
      return Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(produit[i]['text'],
              style: Theme.of(context).textTheme.headline2),
          GestureDetector(
            onTap: () {
              return showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                        child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: PhotoView(
                        imageProvider: AssetImage(produit[i]['img']),
                      ),
                    ));
                  });
            },
            child: Image.asset(
              produit[i]['img'],
              width: MediaQuery.of(context).size.width * 0.3,
            ),
          ),
        ],
      );
    }

    ordi(BuildContext context) {
      double taille = MediaQuery.of(context).size.width;
      double font = 8 + taille * 0.005;
      return Scaffold(
          appBar: headerNav(context),
          body: Column(
            children: [
              Container(
                width: taille,
                height: MediaQuery.of(context).size.height * 0.04,
                color: Colors.grey[500],
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
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
                            "text": "échallotes pempa jardin ..."
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
                          {"aff": "1", "img": "img/oeuf.jpg", "text": "oeufs"},
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

              //affichage des produits
              Container(
                height: 10,
                width: MediaQuery.of(context).size.width * 0.9,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //première ligne
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: taille * 0.05,
                      ),
                      Container(
                        width: taille * 0.25,
                        child: produit[0]['aff'] != 1 ? aff_produit(0) : null,
                      ),
                      Container(
                        width: taille * 0.05,
                      ),
                      Container(
                        width: taille * 0.25,
                        child: produit[1]['aff'] != 1 ? aff_produit(1) : null,
                      ),
                      Container(
                        width: taille * 0.05,
                      ),
                      Container(
                        width: taille * 0.25,
                        child: produit[2]['aff'] != 1 ? aff_produit(2) : null,
                      )
                    ],
                  ),
                  //deuxième ligne
                  Container(
                    height: 10,
                    width: MediaQuery.of(context).size.width * 0.9,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: taille * 0.05,
                      ),
                      Container(
                        width: taille * 0.25,
                        child: produit[3]["aff"] != 1 ? aff_produit(3) : null,
                      ),
                      Container(
                        width: taille * 0.05,
                      ),
                      Container(
                        width: taille * 0.25,
                        child: produit[4]["aff"] != 1 ? aff_produit(4) : null,
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
          ));
    }

    phone() {
      aff_produit(int i) {
        // fonction qui affiche un seul produit
        print(produit[i]['aff']);
        if (produit[i]['aff'] == '1') {
          return Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(produit[i]['text'],
                    style: Theme.of(context).textTheme.headline4),
              ),
              GestureDetector(
                onTap: () {
                  return showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return Container(
                            child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: PhotoView(
                            imageProvider: AssetImage(produit[i]['img']),
                          ),
                        ));
                      });
                },
                child: Image.asset(
                  produit[i]['img'],
                ),
              ),
            ],
          );
        }
        return Container();
      }

      return Scaffold(
          appBar: headerphone(context),
          drawer: Drawer(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              FlatButton(
                child: Text(
                  'Fromages Secs',
                  style: TextStyle(
                    fontFamily: 'Compagnon-Roman',
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
                    Navigator.of(context).pop();
                  });
                },
              ),
              FlatButton(
                child: Text(
                  'Fromages Blancs',
                  style: TextStyle(
                    fontFamily: 'Compagnon-Roman',
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
                    Navigator.of(context).pop();
                  });
                },
              ),
              FlatButton(
                child: Text(
                  'Fromages Spéciaux',
                  style: TextStyle(
                    fontFamily: 'Compagnon-Roman',
                  ),
                ),
                onPressed: () {
                  setState(() {
                    produit = [
                      {
                        "aff": "1",
                        "img": "img/specialiter.jpg",
                        "text": "échallotes pempa jardin ..."
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
                    Navigator.of(context).pop();
                  });
                },
              ),
              FlatButton(
                child: Text(
                  'PLateaux',
                  style: TextStyle(
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
                    Navigator.of(context).pop();
                  });
                },
              ),
              FlatButton(
                child: Text(
                  'Produits Artisanaux ',
                  style: TextStyle(
                    fontFamily: 'Compagnon-Roman',
                  ),
                ),
                onPressed: () {
                  setState(() {
                    produit = [
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
                      {"aff": "1", "img": "img/oeuf.jpg", "text": "oeufs"},
                      {"aff": "0", "img": "", "text": ""},
                      {"aff": "0", "img": "", "text": ""},
                      {"aff": "0", "img": "", "text": ""},
                    ];
                    Navigator.of(context).pop();
                  });
                },
              ),
              FlatButton(
                child: Text(
                  'Lait',
                  style: TextStyle(
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
                    Navigator.of(context).pop();
                  });
                },
              ),
            ]),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                //affichage des produits
                Container(
                  height: 10,
                  width: MediaQuery.of(context).size.width * 0.9,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    aff_produit(0),
                    aff_produit(1),
                    aff_produit(2),
                    aff_produit(3),
                    aff_produit(4),
                    aff_produit(5),
                  ],
                )
              ],
            ),
          ));
    }

    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        // Check the sizing information here and return your UI
        if (sizingInformation.deviceScreenType == DeviceScreenType.desktop) {
          return ordi(context);
        } else if (sizingInformation.deviceScreenType ==
            DeviceScreenType.tablet) {
          return ordi(context);
        } else {
          return phone();
        }
      },
    );
  }
}
