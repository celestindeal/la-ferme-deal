import 'package:ferme/ppBar.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Produit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ordi() {
      return SingleChildScrollView(
        child: Row(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.15,
            ),
            Container(
              child: Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Le fromage (Roannais)"),
                    Text("Braquette (6 faiselles)"),
                    Text("Apérivache 150 gr"),
                    Text("Apérivache 200 gr"),
                    Text("Brique cendrée"),
                    Text("Spécialité"),
                    Text("Bouteille de lait"),
                    Text("Plateau découverte"),
                    Text(
                        "Une Brique cendrée, 1 coeur saveur truffe d'été, 3 fromages d'affinage différents."),
                    Text("Plateau gourmant"),
                    Text(
                        "Une Brique cendrée, 1 coeur saveur truffe d'été, 3 fromages d'affinage différents."),
                    Text("6 oeufs"),
                    Text("Miel de montagne"),
                    Text("Miel de fleurs"),
                  ],
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.15,
            ),
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
            return ordi();
          }
        },
      ),
    );
  }
}
