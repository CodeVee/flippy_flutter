import 'package:flippy_app/themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget>? actions;
  final Widget? leading;
  final bool withLowerColor;

  @override
  Size get preferredSize => const Size.fromHeight(60.0);

  const MainAppBar({
    super.key,
    required this.title,
    this.actions,
    this.leading,
    this.withLowerColor = false,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: AppColors.mainBlue,
        systemNavigationBarColor: Colors.white,
      ),
      title: Padding(
        padding: EdgeInsets.only(right: actions != null ? 0 : 48),
        child: Center(
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14,
            ).withLato(),
          ),
        ),
      ),
      backgroundColor: AppColors.mainBlue,
      leading: leading ??
          MaterialButton(
            onPressed: () => (),
            child: Image.asset("assets/back_arrow.png"),
          ),
      actions: actions,
    );
  }
}
