import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/UI/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 4), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const HomeScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height * 1;
    final width = MediaQuery.sizeOf(context).width * 1;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Image.asset('images/splash.png',
              fit: BoxFit.cover, height: height * .5, width: width * .9),
          SizedBox(height: height * 0.05),
          Text('24/7 WorldWide News',
              style: GoogleFonts.crimsonText(
                  letterSpacing: .6, color: Colors.white)),
          SizedBox(height: height * 0.05),
          const SpinKitPulsingGrid(color: Colors.purple, size: 40)
        ],
      ),
    );
  }
}
