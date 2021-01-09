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
  String presentation =
      "Depuis 1972, la ferme familiale est installée sur la commune de Saint Romain la Motte. En 2005, Miriam et Jean-Christophe ont poursuivis le travail d’Hélène et Charles Deal. L’activité principale est la transformation du lait de nos vaches en fromages fermiers. Des fromages locaux commercialisés dans la région : une clientèle de professionnels (restaurateurs, charcutier-traiteurs et commerces…) Une clientèle de particuliers fidèles depuis le commencement. ";
  List equipe = [
    {
      "nom": "Jean-Christophe",
      "img": "img/vache.jpg",
      "text":
          "Passionné par l’agriculture depuis mon plus jeune âge, je décide de m’installé dans la ferme avec mes parents en 1987. Je prends soin de mes deux troupeaux de vaches (laitières et charolaises), je m’occupe également des cultures pour les nourrir ainsi que de la partie administrative. "
    },
    {
      "nom": "Miriam",
      "img": "img/vache.jpg",
      "text":
          "Après plusieurs années en tant qu’aide-soignante en maison de retraite, j’ai suivi une formation agricole ce qui m’a permis de m’associer à mon mari en 2005. Dans la ferme je suis en charge de la fabrication des fromages pour régaler vos papilles ainsi que la partie gestion et commercialisation. "
    },
    {
      "nom": "Catherine ",
      "img": "img/vache.jpg",
      "text":
          "Arrivée dans l’aventure en 2015, Catherine s’occupe de la fabrication des fromages, de la préparation des commandes et des livraisons. Nous sommes heureux de la compter dans notre équipe depuis toutes ces années."
    },
    {
      "nom": "Anne",
      "img": "img/vache.jpg",
      "text":
          "Arrivée en tant qu’apprentie en 2019, Anne a été capable de seconder les deux associés très rapidement dans leurs tâches quotidiennes (ferme et fromagerie un vrai petit couteau-suisse), la garder dans notre équipe était une évidence. "
    },
    {
      "nom": "Adrien",
      "img": "img/vache.jpg",
      "text":
          "Dernier arrivé dans l’équipe, il vient une journée par semaine pour apporter son aide à Jean-Christophe (dans les années à venir il est attendu à la fromagerie).   "
    },
  ];

  Widget build(BuildContext context) {
    footerordi() {
      //footer
      return Container(
        color: rouge_ferme,
        height: MediaQuery.of(context).size.height * 0.15,
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
                      style: Theme.of(context).textTheme.headline4,
                    )),
                Text(
                  "numéro de télephone : 04 77 64 50 96 ",
                  style: Theme.of(context).textTheme.headline3,
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
                      Text(
                        "Lundi au samedi: 9h-11h30 et 17h-19h",
                        style: Theme.of(context).textTheme.headline3,
                      ),
                      Text(
                        "Dimanche et jours fériés: 9h-11h30 ",
                        style: Theme.of(context).textTheme.headline3,
                      ),
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

    ferme() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.1,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                child: Text("C'est",
                    textAlign: TextAlign.start,
                    style: Theme.of(context).textTheme.headline3),
              ),
              Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.1,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.5,
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                        child: Text("20 vaches montbéliardes ",
                            textAlign: TextAlign.start,
                            style: Theme.of(context).textTheme.headline3),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.5,
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                        child: Text(
                            "60 vaches charolaises et leurs descendances ",
                            textAlign: TextAlign.start,
                            style: Theme.of(context).textTheme.headline3),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.5,
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                        child: Text("Une surface totale de 100 hectares ",
                            overflow: TextOverflow.fade,
                            textAlign: TextAlign.start,
                            style: Theme.of(context).textTheme.headline3),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.5,
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                        child: Text("11 ha de céréales ",
                            textAlign: TextAlign.start,
                            style: Theme.of(context).textTheme.headline3),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.5,
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                        child: Text("6 ha de Maïs ",
                            textAlign: TextAlign.start,
                            style: Theme.of(context).textTheme.headline3),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.5,
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                        child: Text("5 ha luzernes ",
                            textAlign: TextAlign.start,
                            style: Theme.of(context).textTheme.headline3),
                      ),
                      Text("88 ha  de prairies ",
                          textAlign: TextAlign.start,
                          style: Theme.of(context).textTheme.headline3),
                    ],
                  )
                ],
              ),
              Container(
                height: 10,
              ),
            ],
          ),
        ],
      );
    }

    associe(int i) {
      return Container(
          color: i == 0 ? Colors.grey[300] : Colors.grey[500],
          padding: const EdgeInsets.all(20.0),
          margin: const EdgeInsets.all(5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                equipe[i]["img"],
                width: MediaQuery.of(context).size.width * 0.25,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "ASSOCIÉ",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: rouge_ferme),
                        ),
                        Text(
                          equipe[i]["nom"],
                          style: Theme.of(context).textTheme.headline2,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Text(
                      equipe[i]["text"],
                      style: Theme.of(context).textTheme.headline3,
                      textAlign: TextAlign.start,
                    ),
                  ),
                ],
              ),
            ],
          ));
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
                      child: Container(
                        margin: const EdgeInsets.all(30.0),
                        child: Text(presentation,
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.headline3),
                      ),
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
                  child: Text("Notre Ferme",
                      style: Theme.of(context).textTheme.headline1),
                ),
              ),
              ferme(),
              Container(
                color: rouge_ferme,
                height: 2,
                width: MediaQuery.of(context).size.width * 0.9,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.1,
                child: Center(
                  child: Text("L'équipe",
                      style: Theme.of(context).textTheme.headline1),
                ),
              ),
              Column(children: [
                associe(0),
                associe(1),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.2,
                    child: Text(
                      equipe[2]["nom"],
                      style: Theme.of(context).textTheme.headline2,
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
                      style: Theme.of(context).textTheme.headline2,
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
                      style: Theme.of(context).textTheme.headline2,
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
                      style: Theme.of(context).textTheme.headline3,
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
                      style: Theme.of(context).textTheme.headline3,
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
                      style: Theme.of(context).textTheme.headline3,
                      textAlign: TextAlign.center,
                    ),
                  )
                ]),
                Container(
                  height: 10,
                )
              ]),
              footerordi(),
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
                        style: Theme.of(context).textTheme.headline2))),
            Image.asset(
              equipe[i]["img"],
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              padding: const EdgeInsets.all(10.0),
              child: Text(
                equipe[i]["text"],
                style: Theme.of(context).textTheme.headline3,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        );
      }

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
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(30, 30, 30, 5),
                          child: Text(presentation,
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.headline3),
                        ),
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
                    child: Text("Notre Ferme",
                        style: Theme.of(context).textTheme.headline1),
                  ),
                ),
                ferme(),
                Container(
                  color: rouge_ferme,
                  height: 2,
                  width: MediaQuery.of(context).size.width * 0.9,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.1,
                  child: Center(
                    child: Text("L'équipe",
                        style: Theme.of(context).textTheme.headline1),
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
                      Container(
                        height: 30,
                        child: FlatButton(
                            onPressed: () async {
                              if (await canLaunch(
                                  "https://www.google.fr/maps/place/285+Chemin+de+la+Roche,+42640+Saint-Romain-la-Motte/@46.0875441,3.9602611,4364m/data=!3m1!1e3!4m12!1m6!3m5!1s0x47f400dfc0e7439f:0x207c8277064782e5!2sEcole+Publique!8m2!3d46.1011292!4d3.9658738!3m4!1s0x47f40140bfd291a7:0xf571736fe413daca!8m2!3d46.0821708!4d3.963975")) {
                                await launch(
                                    "https://www.google.fr/maps/place/285+Chemin+de+la+Roche,+42640+Saint-Romain-la-Motte/@46.0875441,3.9602611,4364m/data=!3m1!1e3!4m12!1m6!3m5!1s0x47f400dfc0e7439f:0x207c8277064782e5!2sEcole+Publique!8m2!3d46.1011292!4d3.9658738!3m4!1s0x47f40140bfd291a7:0xf571736fe413daca!8m2!3d46.0821708!4d3.963975");
                              }
                            },
                            child: Text(
                                "285 chemin de la roche, 42 640 Saint Romain la Motte",
                                style: Theme.of(context).textTheme.headline4)),
                      ),
                      Container(
                        height: 30,
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
                        child: FlatButton(
                          child: Text("Numéro de télephone: 04 77 64 50 96",
                              style: Theme.of(context).textTheme.headline4),
                          onPressed: () {
                            // UrlLauncher.launch('04 77 64 50 96');
                            String phone = '0477645096';

                            launch(('tel://${phone}'));
                          },
                        ),
                      ),
                      Text(
                        "Lundi au samedi: 8h - 12h et 17h - 19h",
                        style: TextStyle(
                            fontFamily: 'Compagnon-Medium', fontSize: 15),
                      ),
                      Text(
                        "Dimanche:        8h - 12h ",
                        style: TextStyle(
                            fontFamily: 'Compagnon-Medium', fontSize: 15),
                      ),
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
