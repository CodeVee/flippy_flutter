import 'package:flippy_app/pages/home_page.dart';
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
    HomePage(),
    const Center(child: Text('P Square')),
    const Center(child: Text('Preston Pablo')),
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
        selectedIconTheme: const IconThemeData(color: AppColors.mainGreen),
        selectedItemColor: AppColors.mainGreen,
        unselectedIconTheme: const IconThemeData(color: AppColors.mainDark),
        unselectedItemColor: AppColors.mainDark,
        showUnselectedLabels: true,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.grid_view_outlined),
            label: 'Category',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined),
            label: 'Cart',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
            backgroundColor: Colors.white,
          ),
        ],
      ),
    );
  }
}
