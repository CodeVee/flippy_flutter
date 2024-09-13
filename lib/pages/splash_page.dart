import 'dart:async';

import 'package:flippy_app/themes/themes.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  _navigateToWelcome() {
    Timer(const Duration(seconds: 5),
        () => Navigator.popAndPushNamed(context, "/welcome"));
  }

  @override
  void initState() {
    super.initState();
    _navigateToWelcome();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainBlue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 150,
              width: 150,
              padding: const EdgeInsets.all(25),
              decoration: const BoxDecoration(
                  color: Colors.white, shape: BoxShape.circle),
              child: Image.asset(
                'assets/main_logo.png',
                fit: BoxFit.contain,
              ),
            ),
            Text(
              "Flippy",
              style: const TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic)
                  .withLemon(),
            ),
            Text(
              "Online Grocery Shop",
              style: const TextStyle(color: Colors.white).withLato(),
            )
          ],
        ),
      ),
    );
  }
}
