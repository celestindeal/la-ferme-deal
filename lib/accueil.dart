import 'package:carousel_pro/carousel_pro.dart';
import 'package:ferme/main.dart';
import 'package:ferme/ppBar.dart';
import 'package:ferme/ppBar_phone.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher.dart' as UrlLauncher;

class Accueil extends StatelessWidget {
  final navigatorKey = GlobalKey<NavigatorState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  List equipe = [
    {
      "nom": "Miriam",
      "img": "img/vache.jpg",
      "text": "Chef de la transformation et de la commercialisation "
    },
    {
      "nom": "Jean-Christophe",
      "img": "img/vache.jpg",
      "text":
          "Jean Bonjourd^p cq oiucbnsqdpvui zpinc poz hfpized,nc pzefn mpzeio pef,n PU NPOSih fnpODVN PIBFN POihi piuo< n,oijn opiu npi unrezpinpifud ,np"
    },
    {
      "nom": "Cathy",
      "img": "img/vache.jpg",
      "text":
          "Catie Bonjourd^p cq oiucbnsqdpvui zpinc poz hfpized,nc pzefn mpzeio pef,n PU NPOSih fnpODVN PIBFN POihi piuo< n,oijn opiu npi unrezpinpifud ,np"
    },
    {
      "nom": "Anne",
      "img": "img/vache.jpg",
      "text":
          "Anne Bonjourd^p cq oiucbnsqdpvui zpinc poz hfpized,nc pzefn mpzeio pef,n PU NPOSih fnpODVN PIBFN POihi piuo< n,oijn opiu npi unrezpinpifud ,np"
    },
    {
      "nom": "Adrien",
      "img": "img/vache.jpg",
      "text":
          "Adrien Bonjourd^p cq oiucbnsqdpvui zpinc poz hfpized,nc pzefn mpzeio pef,n PU NPOSih fnpODVN PIBFN POihi piuo< n,oijn opiu npi unrezpinpifud ,np"
    },
  ];

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
                FlatButton(
                    onPressed: () async {
                      if (await canLaunch(
                          "https://www.google.fr/maps/place/285+Chemin+de+la+Roche,+42640+Saint-Romain-la-Motte/@46.0875441,3.9602611,4364m/data=!3m1!1e3!4m12!1m6!3m5!1s0x47f400dfc0e7439f:0x207c8277064782e5!2sEcole+Publique!8m2!3d46.1011292!4d3.9658738!3m4!1s0x47f40140bfd291a7:0xf571736fe413daca!8m2!3d46.0821708!4d3.963975")) {
                        await launch(
                            "https://www.google.fr/maps/place/285+Chemin+de+la+Roche,+42640+Saint-Romain-la-Motte/@46.0875441,3.9602611,4364m/data=!3m1!1e3!4m12!1m6!3m5!1s0x47f400dfc0e7439f:0x207c8277064782e5!2sEcole+Publique!8m2!3d46.1011292!4d3.9658738!3m4!1s0x47f40140bfd291a7:0xf571736fe413daca!8m2!3d46.0821708!4d3.963975");
                      }
                    },
                    child: Text(
                      "285 chemin de la roche, 42 640 Saint Romain la Motte",
                    )),
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
                      Text("Lundi au samedi: 8h - 11h 30 et 17h - 19h"),
                      Text("Dimanche:        8h - 11h 30 "),
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
      return Scaffold(
        appBar: headerNav(context),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: Carousel(
                    animationDuration: const Duration(seconds: 1),
                    showIndicator: false,
                    // borderRadius: false,
                    moveIndicatorFromBottom: 180.0,
                    noRadiusForIndicator: false,
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
                              "Nous sommes une exploitation familiale, installer depuis 1972 à Saint Romain la Motte. Jean-Christophe le fil et son épouse Miriam ont repris l’entreprise depuis 2005. Notre activité principale est la transformation de notre lait en fromage lactique vendu sur l’exploitation et chez nos partenaires. Sur l’exploitation il y a un troupeau charolais, et une partie culture qui permet de nourrir nos animaux. ",
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
                      child: Center(child: Text(equipe[0]["nom"]))),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.05,
                  ),
                  Container(
                    child: Center(child: Text(equipe[1]["nom"])),
                    width: MediaQuery.of(context).size.width * 0.3,
                  ),
                ]),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
//image
                  Image.asset(
                    equipe[0]["img"],
                    width: MediaQuery.of(context).size.width * 0.3,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.05,
                  ),
                  Image.asset(
                    equipe[1]["img"],
                    width: MediaQuery.of(context).size.width * 0.3,
                  ),
                ]),
//description
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.25,
                    child: Text(
                      equipe[0]["text"],
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.1,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.25,
                    child: Text(
                      equipe[1]["text"],
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
                      equipe[2]["nom"],
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.10,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.2,
                    child: Text(
                      equipe[3]["nom"],
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.10,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.2,
                    child: Text(
                      equipe[4]["nom"],
                      textAlign: TextAlign.center,
                    ),
                  )
                ]),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Image.asset(
                    equipe[2]["img"],
                    width: MediaQuery.of(context).size.width * 0.25,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.05,
                  ),
                  Image.asset(
                    equipe[3]["img"],
                    width: MediaQuery.of(context).size.width * 0.25,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.05,
                  ),
                  Image.asset(
                    equipe[4]["img"],
                    width: MediaQuery.of(context).size.width * 0.25,
                  ),
                ]),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.2,
                    child: Text(
                      equipe[2]["text"],
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.10,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.2,
                    child: Text(
                      equipe[3]["text"],
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.10,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.2,
                    child: Text(
                      equipe[4]["text"],
                      textAlign: TextAlign.center,
                    ),
                  )
                ])
              ]),
              footer(),
            ],
          ),
        ),
      );
    }

    phone() {
      aff_equipe(int i) {
        return Column(
          children: [
            Container(
                child: Center(
                    child: Text(equipe[i]["nom"],
                        style: Theme.of(context).textTheme.headline5))),
            Image.asset(
              equipe[i]["img"],
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              child: Text(
                equipe[i]["text"],
                textAlign: TextAlign.center,
              ),
            ),
          ],
        );
      }

      double taille = MediaQuery.of(context).size.width;
      return Scaffold(
          appBar: headerphone(context),
          body: SingleChildScrollView(
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
                      ],
                    )),
                Row(
                  children: [
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
                      style:
                          TextStyle(fontFamily: 'Compagnon-Bold', fontSize: 30),
                    ),
                  ),
                ),
                aff_equipe(0),
                aff_equipe(1),
                aff_equipe(2),
                aff_equipe(3),
                aff_equipe(4),
                Container(
                  color: rouge_ferme,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      FlatButton(
                          onPressed: () async {
                            if (await canLaunch(
                                "https://www.google.fr/maps/place/285+Chemin+de+la+Roche,+42640+Saint-Romain-la-Motte/@46.0875441,3.9602611,4364m/data=!3m1!1e3!4m12!1m6!3m5!1s0x47f400dfc0e7439f:0x207c8277064782e5!2sEcole+Publique!8m2!3d46.1011292!4d3.9658738!3m4!1s0x47f40140bfd291a7:0xf571736fe413daca!8m2!3d46.0821708!4d3.963975")) {
                              await launch(
                                  "https://www.google.fr/maps/place/285+Chemin+de+la+Roche,+42640+Saint-Romain-la-Motte/@46.0875441,3.9602611,4364m/data=!3m1!1e3!4m12!1m6!3m5!1s0x47f400dfc0e7439f:0x207c8277064782e5!2sEcole+Publique!8m2!3d46.1011292!4d3.9658738!3m4!1s0x47f40140bfd291a7:0xf571736fe413daca!8m2!3d46.0821708!4d3.963975");
                            }
                          },
                          child: Text(
                            "285 chemin de la roche, 42 640 Saint Romain la Motte",
                          )),
                      FlatButton(
                        child: Text(
                          "Numéro de télephone: 04 77 64 50 96",
                        ),
                        onPressed: () {
                          UrlLauncher.launch('04 77 64 50 96');
                        },
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
                            "Facebook",
                          )),
                      Text("Lundi au samedi: 8h - 12h et 17h - 19h"),
                      Text("Dimanche:        8h - 12h "),
                      Container(
                        height: 10,
                      )
                    ],
                  ),
                )
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
