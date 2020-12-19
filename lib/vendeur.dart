import 'package:flutter/material.dart';

class Vendeur extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List client = [
      {
        "lieu": "2715 Route de Roanne, 42640 Saint-Romain-la-Motte",
        "site": "https://www.tlmenparle.fr/",
        "nom": "Tout le monde en parle",
        "phone": "04 77 52 22 22"
      },
      {
        "lieu": "31 Rue des Manufacturiers, 42640 Saint-Romain-la-Motte",
        "site": "",
        "nom": "Le temps des saisons",
        "phone": "04 77 60 92 38"
      },
      {
        "lieu": "1 Rue St Alban, 42153 Riorges",
        "site": "",
        "nom": "Charcuterie chapon",
        "phone": "04 77 71 42 99"
      },
      {
        "lieu": "Route de Roanne, 69550 Amplepuis",
        "site": "https://www.intermarche.com/?utm_source=gmb",
        "nom": "Intermarché SUPER Amplepuis",
        "phone": "04 74 89 25 28"
      },
      {
        "lieu": "4 Boulevard Camille Benoît, 42300 Roanne",
        "site": "https://magasin.netto.fr/166-netto-roanne?utm_source=gmb",
        "nom": "Netto roanne",
        "phone": "04 77 23 00 95"
      },
      {
        "lieu": " 64 Rue de Trebande, 42640 Saint-Romain-la-Motte",
        "site": "https://magasins.vival.fr/fr/s/vival-saint-romain-la-motte",
        "nom": "Epicerie vival",
        "phone": "04 77 64 56 53"
      },
      {
        "lieu": "Rue de Gruyères, 42370 Renaison",
        "site": "https://www.boucherie-gonin.fr/",
        "nom": "Gonin",
        "phone": "04 77 62 11 08"
      },
      {
        "lieu": "21 Route de Briennon, 42300 Mably",
        "site": "http://www.boucheriedessables.fr/",
        "nom": "Boucherie Mollon",
        "phone": "04 77 69 58 52"
      },
      {
        "lieu": "RN 7, 42300 Mably",
        "site": "https://magasin.netto.fr/165-netto-mably?utm_source=gmb",
        "nom": "Netto Mably",
        "phone": "04 77 23 19 12"
      },
      {
        "lieu": "Rue du Commerce, 42120 Perreux",
        "site": "",
        "nom": "Le Renouveau",
        "phone": "04 77 68 52 60"
      },
      {
        "lieu": " Rue Jean de la Fontaine, 42300 Mably",
        "site": "https://www.carrefour.fr/magasin/mably",
        "nom": "Carrefour Mably",
        "phone": "04 77 44 17 79"
      },
      {
        "lieu": "2 Rue du Tacot, 42370 Renaison",
        "site": "https://www.carrefour.fr/magasin/market-renaison",
        "nom": "Carrefour Market",
        "phone": "04 77 66 49 14"
      },
      {
        "lieu": "Rue Alexandre Raffin, 42300 Roanne",
        "site": "https://www.facebook.com/espacesaintlouisroanne/",
        "nom": "Carrefour City Saint Louis",
        "phone": ""
      },
      {
        "lieu": "44 Rue Roger Salengro, 42300 Roanne",
        "site": "",
        "nom": "Crèmerie des Halles",
        "phone": "04 77 68 08 52"
      },
      {
        "lieu": "N 7 Trouver mon itinéraire, 42120 Le Coteau",
        "site": "https://www.carrefour.fr/magasin/market-le-coteau",
        "nom": "Carrefour Le Coteau",
        "phone": "04 77 68 61 55"
      },
      {
        "lieu": "69 Avenue Jean Moos, 69550 Amplepuis",
        "site": "https://www.carrefour.fr/magasin/market-amplepuis",
        "nom": "Carrefour amplepuis",
        "phone": "04 74 89 48 00"
      },
      {
        "lieu": "53 Rue Jules Faron, 42153 Riorges",
        "site": "https://www.carrefour.fr/magasin/market-riorges/drive",
        "nom": "Carrefour riorges",
        "phone": "04 77 71 16 03"
      },
      {
        "lieu": "131 Rue de Verdun, 42640 Saint-Germain-Lespinasse",
        "site": "",
        "nom": "Les Frangines",
        "phone": "04 77 64 50 22"
      },
      {
        "lieu": "21 pl Verdun, 42300 MABLY",
        "site": "",
        "nom": "Le Verdun",
        "phone": "04 77 71 52 93"
      },
      {
        "lieu": "Route de Vivans, 42310 La Pacaudière",
        "site":
            "https://magasins.supermarches-atac.fr/magasin/la-pacaudiere/70142?utm_source=GMB&utm_campaign=Multidiffusion&utm_content=70142",
        "nom": "ATAC",
        "phone": "04 77 64 10 20"
      },
      {
        "lieu": "27 Rue Etienne Thinon, 42370 Saint-Alban-les-Eaux",
        "site": "http://lesgensdici.asso.fr/",
        "nom": "Les gens d'ici",
        "phone": "04 77 65 81 81"
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("Vendeur"),
      ),
      body: ListView.builder(
          itemCount: client.length,
          itemBuilder: (BuildContext context, int i) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(client[i]["nom"]),
                  Text(client[i]["lieu"]),
                  Text(client[i]["site"]),
                  Text(client[i]["phone"]),
                  Divider(
                    color: Colors.grey,
                  ),
                ],
              ),
            );
          }),
    );
  }
}
