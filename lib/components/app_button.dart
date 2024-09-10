import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String title;
  final Function()? onTap;
  final bool secondary;
  const AppButton(
      {super.key,
      required this.title,
      required this.onTap,
      this.secondary = false});

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
                color: secondary ? Colors.white : const Color(0xFF273773),
                borderRadius: BorderRadius.circular(25)),
            child: Center(
                child: Text(title,
                    style: TextStyle(
                        color:
                            secondary ? const Color(0xFF111111) : Colors.white,
                        fontWeight: FontWeight.bold))),
          ),
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: secondary
                    ? const Color(0x27273773)
                    : const Color(0x27FFFFFF)),
            child: Icon(Icons.arrow_right_alt,
                color: secondary ? const Color(0xFF111111) : Colors.white,
                size: 32),
          )
        ],
      ),
    );
  }
}
