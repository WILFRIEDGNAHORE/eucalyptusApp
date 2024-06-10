class Categories {
  final String name;
    final int id;


  Categories({
    required this.id,
    required this.name,
    
  });
}

List<Categories> categoriesAlimentaires = [
  Categories(id:0,name: "Accessoires"),
  Categories(id:1,name: "Alimentaire"),
  Categories(id:2,name: "Aromathérapie"),
  Categories(id:3,name: "Compléments Alimentaires"),
  Categories(id:4,name: "Cosmétiques et Beauté"),
  Categories(id:5,name: "Nutrition sportives"),
  Categories(id:6,name: "Phytothérapie"),
];
