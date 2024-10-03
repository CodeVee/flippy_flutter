import 'package:flutter/material.dart';
import 'package:flippy_app/components/components.dart';
import 'package:flippy_app/themes/themes.dart';
import 'package:flippy_app/models/models.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MainAppBar(
        title: 'All Categories',
      ),
      backgroundColor: AppColors.mainGrey,
      body: GridView.count(
        crossAxisCount: 4,
        padding: const EdgeInsets.all(15),
        childAspectRatio: MediaQuery.sizeOf(context).width /
            (MediaQuery.sizeOf(context).height / 1.5),
        children: categories
            .map((category) => CategoryTile(category: category))
            .toList(),
      ),
    );
  }
}
