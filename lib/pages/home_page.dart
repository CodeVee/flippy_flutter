import 'package:flutter/material.dart';
import 'package:flippy_app/components/components.dart';
import 'package:flippy_app/themes/themes.dart';
import 'package:flippy_app/models/models.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final categories = [
    const Category(
      imageAsset: 'assets/icons/grocery.png',
      name: 'Grocery',
    ),
    const Category(imageAsset: 'assets/icons/beverage.png', name: 'Beverages'),
    const Category(
        imageAsset: 'assets/icons/vegetable.png', name: 'Vegetables'),
    const Category(imageAsset: 'assets/icons/fruit.png', name: 'Fruits'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainGrey,
      appBar: MainAppBar(
        title: 'Home',
        leading: const Icon(
          Icons.menu,
          color: Colors.white,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_none_outlined,
              color: Colors.white,
              size: 20,
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          const SizedBox(height: 15),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Image.asset(
              'assets/images/grocery_store.png',
              fit: BoxFit.fill,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                const SizedBox(height: 10),
                _getHeader('All Categories'),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: categories
                      .map((category) => CategoryTile(category: category))
                      .toList(),
                ),
                const SizedBox(height: 20),
                _getHeader('Best Sellers'),
                const SizedBox(height: 10),
              ],
            ),
          ),
          Container(
            height: 175,
            margin: const EdgeInsets.only(left: 15),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 4,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(right: 10),
                child: _getTile(),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: _getHeader('Fruits'),
          ),
          const SizedBox(height: 10),
          Container(
            height: 175,
            margin: const EdgeInsets.only(left: 15),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 4,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(right: 10),
                child: _getTile(),
              ),
            ),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }

  Widget _getHeader(String header) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          header,
          style: const TextStyle(
            color: AppColors.mainDark,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ).withLato(),
        ),
        Row(
          children: [
            Text(
              'View All',
              style: const TextStyle(
                color: AppColors.mainBlue,
                fontSize: 12,
              ).withLato(),
            ),
            const Icon(Icons.arrow_right),
          ],
        ),
      ],
    );
  }

  Widget _getTile() {
    return SizedBox(
      width: 120,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _getItem(),
          const Spacer(),
          Text(
            'Mushroom',
            style: TextStyle(
              fontSize: 10,
              color: AppColors.mainDark.withOpacity(.7),
            ).withLato(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '\$150',
                style: const TextStyle(fontSize: 12, color: AppColors.mainDark)
                    .withLato(),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                decoration: BoxDecoration(
                    color: AppColors.mainBlue,
                    borderRadius: BorderRadius.circular(7)),
                child: Text(
                  'Add',
                  style: const TextStyle(fontSize: 10, color: Colors.white)
                      .withLato(),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _getItem() {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 5,
                  vertical: 2,
                ),
                decoration: BoxDecoration(
                  color: AppColors.mainDark.withOpacity(.5),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  '1KG',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                  ).withLato(),
                ),
              ),
              Icon(
                Icons.favorite_border_outlined,
                size: 15,
                color: AppColors.mainDark.withOpacity(.5),
              ),
            ],
          ),
          const SizedBox(height: 5),
          Image.asset('assets/images/mushroom.png'),
        ],
      ),
    );
  }
}
