import 'package:flippy_app/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget>? actions;
  final bool withLowerColor;

  @override
  Size get preferredSize => const Size.fromHeight(60.0);

  const MainAppBar({
    super.key,
    required this.title,
    this.actions,
    this.withLowerColor = false,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: AppColors.mainBlue,
        systemNavigationBarColor:
            withLowerColor ? AppColors.mainBlue : AppColors.mainGrey,
      ),
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 14,
        ),
      ),
      backgroundColor: AppColors.mainBlue,
      leading: MaterialButton(
        onPressed: () => Navigator.pop(context),
        child: Image.asset("assets/back_arrow.png"),
      ),
      actions: actions,
    );
  }
}
