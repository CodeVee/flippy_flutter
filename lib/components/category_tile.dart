import 'package:flutter/material.dart';
import 'package:flippy_app/models/models.dart';
import 'package:flippy_app/themes/themes.dart';

class CategoryTile extends StatelessWidget {
  final Category category;
  const CategoryTile({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 80,
          width: 80,
          decoration: const BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
          child: Image.asset(category.imageAsset),
        ),
        const SizedBox(height: 5),
        Text(
          category.name,
          style: const TextStyle(
            color: AppColors.mainDark,
            fontSize: 10,
          ).withLato(),
        )
      ],
    );
  }
}
