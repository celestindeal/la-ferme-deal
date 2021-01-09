import 'package:ferme/main.dart';
import 'package:ferme/ppBar.dart';
import 'package:ferme/ppBar_phone.dart';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Histoire extends StatefulWidget {
  @override
  _HistoireState createState() => _HistoireState();
}

bool page = true;
List moment = [
  {
    "date": "2020",
    "text": "20 laitières montbéliardes et 97 charolaises et 100 hectares",
  },
  {
    "date": "2005",
    "text": "Installation Miriam Deal",
  },
  {
    "date": "31 Décembre 2004",
    "text":
        "Départ à la retraite de Hélène Deal. 15 vaches laitières et 50 vaches charolaises.",
  },
  {
    "date": "1997",
    "text": "Départ à la retraite de Charles Deal.",
  },
  {
    "date": "1987",
    "text":
        "Arrivée de Jean-Christophe Deal. 75 hectares, 12 vaches laitières, 40 vaches charolaises. Construction d'un nouveau batiment pour les vaches allaintes.",
  },
  {
    "date": "1972",
    "text": "4 vaches Laitières, 30 vaches charolaises, 35 hectares.",
  },
  {
    "date": "1965",
    "text":
        "Saint Edmond, 30 fromages par jour, La traite à la MAIN!!!! Ventes de fromages à charlieu",
  },
];

class _HistoireState extends State<Histoire> {
  @override
  Widget build(BuildContext context) {
    // la page histoire est la même pour les ordis et les télephones
    histoire() {
      his(int i) {
        return Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Text(
              moment[i]["date"],
              style: TextStyle(
                  fontFamily: 'Compagnon-Medium',
                  fontSize: 18,
                  color: rouge_ferme),
            ),
            Text(moment[i]["text"],
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline3),
            Container(
              height: 10,
            ),
            Container(
              color: rouge_ferme,
              height: 2,
              width: MediaQuery.of(context).size.width * 0.8,
            ),
          ],
        );
      }

      return Column(
        children: [
          his(0),
          his(1),
          his(2),
          his(3),
          his(4),
          his(5),
          his(6),
        ],
      );
    }

    ordi() {
      aff_photo(String image) {
        return showDialog(
            context: context,
            builder: (BuildContext contexts) {
              return Container(
                  child: GestureDetector(
                onTap: () {
                  Navigator.of(contexts).pop();
                },
                child: PhotoView(
                  imageProvider: AssetImage(image),
                ),
              ));
            });
      }

      galerie() {
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    aff_photo('img/histoire/p1.png');
                  },
                  child: Image.asset(
                    'img/histoire/p1.png',
                    width: MediaQuery.of(context).size.width * 0.25,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    aff_photo('img/histoire/p2.png');
                  },
                  child: Image.asset(
                    'img/histoire/p2.png',
                    width: MediaQuery.of(context).size.width * 0.25,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    aff_photo('img/histoire/p3.png');
                  },
                  child: Image.asset(
                    'img/histoire/p3.png',
                    width: MediaQuery.of(context).size.width * 0.25,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    aff_photo('img/histoire/p4.png');
                  },
                  child: Image.asset(
                    'img/histoire/p4.png',
                    width: MediaQuery.of(context).size.width * 0.25,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    aff_photo('img/histoire/p5.png');
                  },
                  child: Image.asset(
                    'img/histoire/p5.png',
                    width: MediaQuery.of(context).size.width * 0.25,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    aff_photo('img/histoire/p6.png');
                  },
                  child: Image.asset(
                    'img/histoire/p6.png',
                    width: MediaQuery.of(context).size.width * 0.25,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    aff_photo('img/histoire/p7.png');
                  },
                  child: Image.asset(
                    'img/histoire/p7.png',
                    width: MediaQuery.of(context).size.width * 0.25,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    aff_photo('img/histoire/p8.png');
                  },
                  child: Image.asset(
                    'img/histoire/p8.png',
                    width: MediaQuery.of(context).size.width * 0.25,
                  ),
                ),
              ],
            ),
          ],
        );
      }

      double taille = MediaQuery.of(context).size.width;
      double font = 8 + taille * 0.005;

      return Scaffold(
        appBar: headerNav(context),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: taille,
                height: MediaQuery.of(context).size.height * 0.04,
                color: Colors.grey[500],
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FlatButton(
                        child: Text(
                          'Histoirique de la ferme Deal ',
                          style: TextStyle(
                            fontFamily: 'Compagnon-Roman',
                            fontSize: font,
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            page = true;
                          });
                        },
                      ),
                      FlatButton(
                        child: Text(
                          'Galerie',
                          style: TextStyle(
                            fontFamily: 'Compagnon-Roman',
                            fontSize: font,
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            page = false;
                          });
                        },
                      ),
                    ]),
              ),
              Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.1,
                  ),
                  Container(
                    child: Expanded(child: page ? histoire() : galerie()),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.1,
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    }

    phone() {
      aff_photo(String image) {
        return showDialog(
            context: context,
            builder: (BuildContext context) {
              return Container(
                  child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: PhotoView(
                  imageProvider: AssetImage(image),
                ),
              ));
            });
      }

      galerie() {
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                aff_photo('img/histoire/p1.png');
              },
              child: Image.asset(
                'img/histoire/p1.png',
              ),
            ),
            GestureDetector(
              onTap: () {
                aff_photo('img/histoire/p2.png');
              },
              child: Image.asset(
                'img/histoire/p2.png',
              ),
            ),
            GestureDetector(
              onTap: () {
                aff_photo('img/histoire/p3.png');
              },
              child: Image.asset(
                'img/histoire/p3.png',
              ),
            ),
            GestureDetector(
              onTap: () {
                aff_photo('img/histoire/p4.png');
              },
              child: Image.asset(
                'img/histoire/p4.png',
              ),
            ),
            GestureDetector(
              onTap: () {
                aff_photo('img/histoire/p5.png');
              },
              child: Image.asset(
                'img/histoire/p5.png',
              ),
            ),
            GestureDetector(
              onTap: () {
                aff_photo('img/histoire/p6.png');
              },
              child: Image.asset(
                'img/histoire/p6.png',
              ),
            ),
            GestureDetector(
              onTap: () {
                aff_photo('img/histoire/p7.png');
              },
              child: Image.asset(
                'img/histoire/p7.png',
              ),
            ),
            GestureDetector(
              onTap: () {
                aff_photo('img/histoire/p8.png');
              },
              child: Image.asset(
                'img/histoire/p8.png',
              ),
            ),
          ],
        );
      }

      return Scaffold(
          appBar: headerphone(context),
          drawer: Drawer(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              FlatButton(
                child: Text(
                  'Histoirique de la ferme Deal',
                  style: TextStyle(
                    fontFamily: 'Compagnon-Roman',
                  ),
                ),
                onPressed: () {
                  setState(() {
                    page = true;
                    Navigator.of(context).pop();
                  });
                },
              ),
              FlatButton(
                child: Text(
                  'Galerie',
                  style: TextStyle(
                    fontFamily: 'Compagnon-Roman',
                  ),
                ),
                onPressed: () {
                  setState(() {
                    page = false;
                    Navigator.of(context).pop();
                  });
                },
              ),
            ]),
          ),
          body: SingleChildScrollView(
            child: Row(
              children: [
                Container(
                  child: Expanded(child: page ? histoire() : galerie()),
                ),
              ],
            ),
          ));
    }

    return ResponsiveBuilder(
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
    );
  }
}
