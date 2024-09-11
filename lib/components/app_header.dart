import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppHeader extends StatelessWidget {
  final bool alternate;
  const AppHeader({super.key, this.alternate = false});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/main_logo.png'),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Flippy",
                style: GoogleFonts.lemon(
                  textStyle: const TextStyle(
                      color: Color(0xFF56D5A8),
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic),
                )),
            Text(
              "Online Grocery Shops",
              textAlign: TextAlign.right,
              style: GoogleFonts.lato(
                  textStyle: TextStyle(
                      color: alternate ? Colors.white : const Color(0xFF273773),
                      fontSize: 12,
                      fontWeight: FontWeight.bold)),
            )
          ],
        )
      ],
    );
  }
}
