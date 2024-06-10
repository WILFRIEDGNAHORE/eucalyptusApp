import 'package:autocomplete_textfield/autocomplete_textfield.dart';
import 'package:eucalyptus_app/models/Rayons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

import '../models/Categories.dart';
import '../models/Produits.dart';

class ProduitsProvider extends ChangeNotifier {
  final TextEditingController searchController = TextEditingController();
  final GlobalKey<AutoCompleteTextFieldState<String>> autoCompleteKey =
      GlobalKey();

  final List<Produits> _produits = [
    Produits(
      id: 0,
      name: "Produit 1",
      image: "assets\images\Yogi-Tea-Équilibre-Vert.png",
      description: "Description du produit 1",
      price: 9.99,
      categories: categoriesAlimentaires[0],
      rayons: rayonProduits[0],
      qty: 17,
      unit: 'pcs, prices',
    ),
    Produits(
      id: 1,
      name: "Produit 1",
      image: "assets\images\Yogi-Tea-Équilibre-Vert.png",
      description: "Description du produit 1",
      price: 9.99,
      isEpuise: false,
      categories: categoriesAlimentaires[0],
      rayons: rayonProduits[0],
      qty: 17,
      unit: 'pcs, prices',
    ),
    // Ajoutez d'autres aliments ici
  ];

  List<Produits> get produits => _produits;

  void toggleFavorite(int index) {
    _produits[index].isFavorite = !_produits[index].isFavorite;
    notifyListeners(); // Notifie les widgets écoutant les changements
  }
}
