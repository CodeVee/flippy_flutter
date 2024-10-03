import 'package:flippy_app/pages/pages.dart';
import 'package:flutter/material.dart';
import 'package:flippy_app/themes/themes.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({super.key});

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  int _selectedIndex = 0;

  final _pages = [
    const HomePage(),
    const SearchPage(),
    const CategoryPage(),
    const Center(child: Text('Fave')),
    const Center(child: Text('Davido')),
  ];

  void _changePage(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _changePage,
        backgroundColor: Colors.white,
        selectedIconTheme: const IconThemeData(color: AppColors.mainGreen),
        selectedItemColor: AppColors.mainGreen,
        unselectedIconTheme: const IconThemeData(color: AppColors.mainDark),
        unselectedItemColor: AppColors.mainDark,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.grid_view_outlined),
            label: 'Category',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
