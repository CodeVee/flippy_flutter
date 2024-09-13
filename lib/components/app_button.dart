import 'package:flippy_app/themes/themes.dart';
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
                color: secondary ? Colors.white : AppColors.mainBlue,
                borderRadius: BorderRadius.circular(25)),
            child: Center(
                child: Text(title,
                    style: TextStyle(
                        color: secondary ? AppColors.mainDark : Colors.white,
                        fontWeight: FontWeight.bold))),
          ),
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: (secondary ? AppColors.mainBlue : Colors.white)
                    .withOpacity(.15)),
            child: Image.asset("assets/right_arrow.png",
                color: secondary ? AppColors.mainDark : Colors.white),
          )
        ],
      ),
    );
  }
}
