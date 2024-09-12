import 'package:flutter/material.dart';

class MainAppBar extends StatelessWidget {
  final String title;
  final List<Widget>? actions;

  const MainAppBar({super.key, required this.title, this.actions});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title,
          style: const TextStyle(color: Colors.white, fontSize: 14)),
      backgroundColor: const Color(0xFF273773),
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_sharp, color: Colors.white),
        onPressed: () => Navigator.pop(context),
      ),
      actions: actions,
    );
  }
}
