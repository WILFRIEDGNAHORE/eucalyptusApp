import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:autocomplete_textfield/autocomplete_textfield.dart';
import 'package:eucalyptus_app/models/Rayons.dart';

import '../models/Categories.dart';
import '../models/Produits.dart';

class ProduitsExclusifs extends ChangeNotifier {
  final TextEditingController searchController = TextEditingController();
  final GlobalKey<AutoCompleteTextFieldState<String>> autoCompleteKey =
      GlobalKey();

  List<Produits> produitsExclu = [
    Produits(
        id: 0,
        name: "TURBO MASS GAINER Vanille",
        image: "assets/images/TURBO-MASS-GAINER.png",
        description: "Description du produit 1",
        price: 19000,
        categories: categoriesAlimentaires[0],
        rayons: rayonProduits[0],
        qty: 1,
        unit: 'kg, prix'),
    Produits(
      id: 1,
      name: "Yogi Tea Green Balance",
      image: "assets/images/Yogi-Tea-Équilibre-Vert.png",
      description: "Description du produit 1",
      price: 9.99,
      isEpuise: false,
      categories: categoriesAlimentaires[0],
      rayons: rayonProduits[0],
      qty: 17,
      unit: 'pcs, prix',
    ),
    // Ajoutez d'autres aliments ici
  ];

  void updateProducts(List<Produits> newProducts) {
    produitsExclu = newProducts;
    notifyListeners(); // Notifie les écouteurs que les données ont changé
  }
}
