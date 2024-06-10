import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

import '../login/sign_in_view.dart';

class OnBorading extends StatelessWidget {
  OnBorading({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: LiquidSwipe(
            pages: pages,
            enableLoop: false,
            fullTransitionValue: 300,
            enableSideReveal: true,
            slideIconWidget: const Icon(
              Icons.arrow_back_ios,
            ),
            waveType: WaveType.liquidReveal,
            positionSlideIcon: 0.5,
            onPageChangeCallback: (int page) {
              // Vérifiez si la dernière page est atteinte et naviguez vers HomeViewPage
              if (page == pages.length - 1) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignInView()),
                );
              }
            }),
      ),
    );
  }

  final pages = [
    Container(
      width: double.infinity,
      color: Color.fromARGB(255, 247, 218, 218),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 25),
            child: Image.asset(
              "assets/images/onBorImg4.png",
              height: 300,
              width: 300,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              top: 10,
              bottom: 20,
            ),
            child: Text(
              "lozlznznznznznnzna,kakaallalalalalallalala",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    ),
    Container(
      width: double.infinity,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 25),
            child: Image.asset(
              "assets/images/onBorImg5.png",
              height: 300,
              width: 300,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              top: 10,
              bottom: 20,
            ),
            child: Text(
              "lozlznznznznznnzna,kakaallalalalalallalala",
              style: TextStyle(
                  color: Color.fromARGB(255, 224, 184, 184),
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    ),
    Container(
      width: double.infinity,
      color: const Color.fromARGB(255, 130, 236, 134),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 25),
            child: Image.asset(
              "assets/images/onBorImg2.jpg",
              height: 300,
              width: 300,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              top: 10,
              bottom: 20,
            ),
            child: Text(
              "lozlznznznznznnzna,kakaallalalalalallalala",
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    ),
  ];
}
