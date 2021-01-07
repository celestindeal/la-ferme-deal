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

class _HistoireState extends State<Histoire> {
  @override
  Widget build(BuildContext context) {
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
                    aff_photo('img/histoire/p7.png');
                  },
                  child: Image.asset(
                    'img/histoire/p7.png',
                    width: MediaQuery.of(context).size.width * 0.25,
                  ),
                ),
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
                    aff_photo('img/histoire/p9.png');
                  },
                  child: Image.asset(
                    'img/histoire/p9.png',
                    width: MediaQuery.of(context).size.width * 0.25,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    aff_photo('img/histoire/p11.png');
                  },
                  child: Image.asset(
                    'img/histoire/p11.png',
                    width: MediaQuery.of(context).size.width * 0.25,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    aff_photo('img/histoire/p12.png');
                  },
                  child: Image.asset(
                    'img/histoire/p12.png',
                    width: MediaQuery.of(context).size.width * 0.25,
                  ),
                ),
              ],
            ),
          ],
        );
      }

      histoire() {
        return Column(
          children: [
            Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                Text(
                  "2020",
                  style: TextStyle(
                      fontFamily: 'Compagnon-Medium',
                      fontSize: 18,
                      color: rouge_ferme),
                ),
                Text(" 20 laitière et 97 charolise",
                    style: Theme.of(context).textTheme.headline4),
                Container(
                  color: rouge_ferme,
                  height: 2,
                  width: MediaQuery.of(context).size.width * 0.8,
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                Text(
                  "2020",
                  style: TextStyle(
                      fontFamily: 'Compagnon-Medium',
                      fontSize: 18,
                      color: rouge_ferme),
                ),
                Text(" 20 laitière et 97 charolise",
                    style: Theme.of(context).textTheme.headline4),
                Container(
                  color: rouge_ferme,
                  height: 2,
                  width: MediaQuery.of(context).size.width * 0.8,
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                Text(
                  "2020",
                  style: TextStyle(
                      fontFamily: 'Compagnon-Medium',
                      fontSize: 18,
                      color: rouge_ferme),
                ),
                Text(" 20 laitière et 97 charolise",
                    style: Theme.of(context).textTheme.headline4),
                Container(
                  color: rouge_ferme,
                  height: 2,
                  width: MediaQuery.of(context).size.width * 0.8,
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                Text(
                  "2020",
                  style: TextStyle(
                      fontFamily: 'Compagnon-Medium',
                      fontSize: 18,
                      color: rouge_ferme),
                ),
                Text(" 20 laitière et 97 charolise",
                    style: Theme.of(context).textTheme.headline4),
                Container(
                  color: rouge_ferme,
                  height: 2,
                  width: MediaQuery.of(context).size.width * 0.8,
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

      return Scaffold(
          appBar: headerphone(context),
          body: SingleChildScrollView(
            child: Row(
              children: [
                Container(
                  child: Expanded(
                    child: Column(
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
                            aff_photo('img/histoire/p7.png');
                          },
                          child: Image.asset(
                            'img/histoire/p7.png',
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            aff_photo('img/histoire/p9.png');
                          },
                          child: Image.asset(
                            'img/histoire/p9.png',
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            aff_photo('img/histoire/p11.png');
                          },
                          child: Image.asset(
                            'img/histoire/p11.png',
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            aff_photo('img/histoire/p12.png');
                          },
                          child: Image.asset(
                            'img/histoire/p12.png',
                          ),
                        ),
                      ],
                    ),
                  ),
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
