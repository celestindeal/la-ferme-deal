import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Produit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ordi() {
      return Text(" okkkkkk");
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Produit"),
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
