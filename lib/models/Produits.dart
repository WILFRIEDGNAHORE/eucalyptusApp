import 'package:eucalyptus_app/models/Categories.dart';
import 'package:eucalyptus_app/models/Rayons.dart';

class Produits {
  final int id;
  final String name;
  final String image;
  final String description;
  final double price;
  final int qty;
  final String unit;
  final Categories categories;
  final Rayons rayons;
  bool isEpuise;
  bool isFavorite;
  bool isPromotion;

  Produits(
      {required this.id,
      required this.name,
      required this.image,
      required this.description,
      required this.price,
      required this.qty,
      required this.unit,
      required this.categories,
      required this.rayons,
      this.isEpuise = false,
      this.isFavorite = false,
      this.isPromotion = false});
}
