import 'dart:async';
import 'package:flutter/material.dart';
import 'package:scanmyktp/screens/menu_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const MenuScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xffeef5ff),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 0,
              right: 0,
              child: Image.asset(
                'assets/images/righttop_splash.png',
                width: 150, // Ganti dengan lebar yang sesuai
                height: 150, // Ganti dengan tinggi yang sesuai
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: Image.asset(
                'assets/images/leftbot_splash.png',
                width: 150, // Ganti dengan lebar yang sesuai
                height: 150, // Ganti dengan tinggi yang sesuai
                fit: BoxFit.cover,
              ),
            ),
            Center(
              child: SizedBox(
                width: 250, // Ganti dengan lebar yang diinginkan
                height: 250, // Ganti dengan tinggi yang diinginkan
                child: Image.asset(
                  'assets/images/logo_splash.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
