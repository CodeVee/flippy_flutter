import 'package:flutter/material.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget>? actions;

  @override
  Size get preferredSize => const Size.fromHeight(60.0);

  const MainAppBar({required this.title, this.actions, super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title,
          style: const TextStyle(color: Colors.white, fontSize: 14)),
      backgroundColor: const Color(0xFF273773),
      leading: MaterialButton(
          onPressed: () => Navigator.pop(context),
          child: Image.asset("assets/back_arrow.png")),
      actions: actions,
    );
  }
}
