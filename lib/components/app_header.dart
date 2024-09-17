import 'package:flippy_app/themes/themes.dart';
import 'package:flutter/material.dart';

class AppHeader extends StatelessWidget {
  final bool alternate;
  const AppHeader({
    super.key,
    this.alternate = false,
  });

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
            Text(
              "Flippy",
              style: const TextStyle(
                color: AppColors.mainGreen,
                fontSize: 40,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ).withLemon(),
            ),
            Text(
              "Online Grocery Shops",
              textAlign: TextAlign.right,
              style: TextStyle(
                color: alternate ? Colors.white : AppColors.mainBlue,
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ).withLato(),
            )
          ],
        )
      ],
    );
  }
}
