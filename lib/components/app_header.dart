import 'package:flutter/material.dart';

class AppHeader extends StatelessWidget {
  const AppHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/main_logo.png'),
        const Column(
          children: [
            Text(
              "Flippy",
              style: TextStyle(
                  color: Color.fromARGB(255, 86, 213, 168),
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
            ),
            Text(
              "Online Grocery Shops",
              style: TextStyle(
                  color: Color.fromARGB(255, 39, 55, 115), fontSize: 12),
            )
          ],
        )
      ],
    );
  }
}
