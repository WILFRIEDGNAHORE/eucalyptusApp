import 'package:eucalyptus_app/providers/MeilProds.dart';
import 'package:eucalyptus_app/providers/ProdExclu.dart';
import 'package:eucalyptus_app/view/splash/Start_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'common/color_extensions.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ProduitsExclusifs()),
        ChangeNotifierProvider(create: (context) => MeilleursProduits()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => MeilleursProduits()),
        ChangeNotifierProvider(create: (context) => ProduitsExclusifs()),
      ],
      child: MaterialApp(
        home: const StartupView(),
      ),
      
    );
  }
}
