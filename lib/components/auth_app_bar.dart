import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flippy_app/themes/app_colors.dart';

class AuthAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget>? actions;
  final bool withLowerColor;

  @override
  Size get preferredSize => const Size.fromHeight(60.0);

  const AuthAppBar({
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
