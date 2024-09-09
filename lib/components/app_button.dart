import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String title;
  final Function()? onTap;
  const AppButton({super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        alignment: Alignment.centerRight,
        children: [
          Container(
            height: 50,
            width: 274,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 39, 55, 115),
                borderRadius: BorderRadius.circular(25)),
            child: Center(
                child: Text(title,
                    style: const TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold))),
          ),
          Container(
            height: 50,
            width: 50,
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(39, 255, 255, 255)),
            child: const Icon(Icons.arrow_right_alt,
                color: Colors.white, size: 32),
          )
        ],
      ),
    );
  }
}
