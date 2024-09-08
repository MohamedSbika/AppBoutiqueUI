import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

          Padding(
            padding: const EdgeInsets.only(left: 80.0, right: 50, top: 100),
            child: Text(
              "UrSneakers",
              textAlign: TextAlign.center,
              style: GoogleFonts.notoSerif(
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          // logo
          Padding(
            padding: const EdgeInsets.only(
                left: 80.0, right: 80, bottom: 40, top: 60),
            child: Image.asset('lib/images/sneakers.png'),
          ),

          // main text
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "On vous Servis la meilleur qualité",
              textAlign: TextAlign.center,
              style: GoogleFonts.notoSerif(
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          const SizedBox(
            height: 24,
          ),

          const Spacer(),

          // button
          GestureDetector(
            onTap: () => Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) {
              return const HomePage();
            })),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(15),
              ),
              padding: const EdgeInsets.all(24),
              child: const Text(
                "Commencer",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),

          const Spacer(),
        ],
      ),
    );
  }
}
