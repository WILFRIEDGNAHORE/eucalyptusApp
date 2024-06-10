import 'package:eucalyptus_app/view/splash/on_borading.dart';
import 'package:flutter/material.dart';

import '../../common_widgets/round_button.dart';

class WelcomeView extends StatefulWidget {
  const WelcomeView({super.key});

  @override
  State<WelcomeView> createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Image.asset(
            "assets/images/logo.png",
            width: 60,
            height: 60,
          ),
          const SizedBox(
            height: 8,
          ),
          Image.asset(
            "assets/images/about.jpg",
            width: media.width,
            height: media.height,
            fit: BoxFit.cover,
          ),
          Container(
            color: Colors.black
                .withOpacity(0.8), // Couleur sombre avec une opacité de 0.6
            width: media.width,
            height: media.height,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset(
                "assets/images/logo.png",
                width: 150,
                height: 150,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "  Bienvenue à\n   Eucalyptus",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 45,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "votre boutique de produits bio",
                    style: TextStyle(
                        color: const Color(0xffFCFCFC).withOpacity(0.7),
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: RoundButton(
                  title: "Get Started",
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => OnBorading()));
                  },
                ),
              ),
              const SizedBox(
                height: 46,
              ),
            ],
          )
        ],
      ),
    );
  }
}
