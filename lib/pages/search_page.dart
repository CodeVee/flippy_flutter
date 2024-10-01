import 'package:flippy_app/components/components.dart';
import 'package:flippy_app/themes/themes.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MainAppBar(
        title: 'Search',
      ),
      backgroundColor: AppColors.mainGrey,
      body: Column(
        children: [
          AppSearchBar(
            controller: _searchController,
            hintText: 'Hello',
          ),
          Expanded(
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    children: [
                      SearchTile(title: 'Food', selected: false, onTap: () {}),
                      SearchTile(
                          title: 'Food & Fruits', selected: true, onTap: () {}),
                      SearchTile(
                          title: 'Frozen Food', selected: false, onTap: () {}),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
