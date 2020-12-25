import 'package:ferme/ppBar.dart';
import 'package:ferme/ppBar_phone.dart';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Histoire extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ordi() {
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
          appBar: headerNav(context),
          body: SingleChildScrollView(
            child: Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.1,
                ),
                Container(
                  child: Expanded(
                    child: Column(
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
                                aff_photo('img/histoire/p10.png');
                              },
                              child: Image.asset(
                                'img/histoire/p10.png',
                                width: MediaQuery.of(context).size.width * 0.25,
                              ),
                            ),
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
                    ),
                  ),
                ),
              ],
            ),
          ));
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
                  width: MediaQuery.of(context).size.width * 0.1,
                ),
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
                            aff_photo('img/histoire/p10.png');
                          },
                          child: Image.asset(
                            'img/histoire/p10.png',
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
