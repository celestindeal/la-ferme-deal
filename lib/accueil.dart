import 'dart:io';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Accueil extends StatelessWidget {
  final navigatorKey = GlobalKey<NavigatorState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    ordi() {
      return Column(
        children: [
          Center(
            child: ElevatedButton(
              child: Text('Produit'),
              onPressed: () {
                // Navigate to the second screen using a named route.
                Navigator.pushNamed(context, '/second');
              },
            ),
          ),
          Center(
            child: ElevatedButton(
              child: Text('Histoire'),
              onPressed: () {
                // Navigate to the second screen using a named route.
                Navigator.pushNamed(context, '/histoire');
              },
            ),
          ),
          Center(
            child: ElevatedButton(
              child: Text('Vendeur'),
              onPressed: () {
                // Navigate to the second screen using a named route.
                Navigator.pushNamed(context, '/vendeur');
              },
            ),
          ),
        ],
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Acceuil'),
      ),
      body: ResponsiveBuilder(
        builder: (context, sizingInformation) {
          // Check the sizing information here and return your UI
          if (sizingInformation.deviceScreenType == DeviceScreenType.desktop) {
            return ordi();
          } else if (sizingInformation.deviceScreenType ==
              DeviceScreenType.tablet) {
            return ordi();
          } else {
            return ordi();
          }
        },
      ),
    );
  }
}
