import 'dart:io';
import 'package:flutter/material.dart';
import 'package:responsive_layout_builder/responsive_layout_builder.dart';

class Accueil extends StatelessWidget {
  final navigatorKey = GlobalKey<NavigatorState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    const Map<LayoutSize, String> layoutSizeEnumToString = {
      LayoutSize.watch: 'Wristwatch',
      LayoutSize.mobile: 'Mobile',
      LayoutSize.tablet: 'Tablet',
      LayoutSize.desktop: 'Desktop',
      LayoutSize.tv: 'TV',
    };
    const Map<MobileLayoutSize, String> mobileLayoutSizeEnumToString = {
      MobileLayoutSize.small: 'Small',
      MobileLayoutSize.medium: 'Medium',
      MobileLayoutSize.large: 'Large',
    };
    const Map<TabletLayoutSize, String> tabletLayoutSizeEnumToString = {
      TabletLayoutSize.small: 'Small',
      TabletLayoutSize.large: 'Large',
    };
    return Scaffold(
      appBar: AppBar(
        title: Text('Acceuil'),
      ),
      body: Column(
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
          ResponsiveLayoutBuilder(
            builder: (context, size) => Center(
              child: Column(
                children: <Widget>[
                  if (size.mobile != null) Text("on est sur un mobile"),
                  if (size.tablet != null) Text("on est sur une tablette"),
                  if (size.tablet == null && size.mobile == null)
                    Text("on est sur un odrinateur"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
