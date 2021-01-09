import 'package:ferme/accueil.dart';
import 'package:ferme/histoire.dart';
import 'package:ferme/produit.dart';
import 'package:ferme/vendeur.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(new Main());
}

class Main extends StatefulWidget {
  @override
  _MainState createState() => _MainState();
}

Color _getColorFromHex(String hexColor) {
  hexColor = hexColor.replaceAll("#", "");
  if (hexColor.length == 6) {
    hexColor = "FF" + hexColor;
  }
  if (hexColor.length == 8) {
    return Color(int.parse("0x$hexColor"));
  }
}

// Color rouge_ferme = _getColorFromHex('e40e20');
Color rouge_ferme = _getColorFromHex('7A221B');

class _MainState extends State<Main> {
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(
          // 1 titre
          // 2 titre secondaire
          // 3 text
          // 4 liens
          // 5 ?
          headline1:
              TextStyle(fontFamily: 'Compagnon-Bold', fontSize: 35), //titre
          headline2: TextStyle(fontFamily: 'Compagnon-Italic', fontSize: 28),
          headline3: TextStyle(fontFamily: 'Compagnon-Light', fontSize: 18),
          headline4: TextStyle(
              fontFamily: 'Compagnon-Medium', fontSize: 18), // titre secondaire
          headline5:
              TextStyle(fontFamily: 'Compagnon-Roman', fontSize: 18), // text
        ),
        brightness: Brightness.light,
        primaryColor: rouge_ferme,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => Accueil(),
        '/produit': (context) => Produit(),
        '/histoire': (context) => Histoire(),
        '/vendeur': (context) => Vendeur(),
      },
    );
  }
}
