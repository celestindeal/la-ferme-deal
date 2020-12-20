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

class _MainState extends State<Main> {
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.red[300],
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => Accueil(),
        '/second': (context) => Produit(),
        '/histoire': (context) => Histoire(),
        '/vendeur': (context) => Vendeur(),
      },
    );
  }
}
