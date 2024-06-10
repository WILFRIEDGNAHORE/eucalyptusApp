import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:autocomplete_textfield/autocomplete_textfield.dart';
import 'package:eucalyptus_app/models/Rayons.dart';

import '../models/Categories.dart';
import '../models/Produits.dart';

class MeilleursProduits extends ChangeNotifier {
  final TextEditingController searchController = TextEditingController();
  final GlobalKey<AutoCompleteTextFieldState<String>> autoCompleteKey =
      GlobalKey();

  List<Produits> meilleursProd = [
    Produits(
      id: 0,
      name: "Yogi Tea Women's Tea",
      image: "assets/images/Yogi-Tea-Équilibre-Vert.png",
      description: "Description du produit 1",
      price: 9.99,
      categories: categoriesAlimentaires[0],
      rayons: rayonProduits[0],
      qty: 17,
      unit: 'pcs, prices',
    ),
    Produits(
      id: 1,
      name: "Yogi tea Citron-Gingembre",
      image: "assets/images/yogi-tea-citron-gingembre.png",
      description: "Description du produit 1",
      price: 9.99,
      isEpuise: false,
      categories: categoriesAlimentaires[0],
      rayons: rayonProduits[0],
      qty: 17,
      unit: 'pcs, prix',
    ),
    Produits(
      id: 1,
      name: "Yogi tea Bonheur",
      image: "assets/images/Yogi-tea-Bonheur-tea.png",
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
    meilleursProd = newProducts;
    notifyListeners(); // Notifie les écouteurs que les données ont changé
  }
}
