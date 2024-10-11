import 'package:flutter/material.dart';
import 'package:flippy_app/themes/themes.dart';

class SearchTile extends StatelessWidget {
  final String title;
  final bool selected;
  final void Function()? onTap;
  const SearchTile({
    super.key,
    required this.title,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      contentPadding: const EdgeInsets.all(0),
      shape: Border(
        bottom: BorderSide(
          width: 1,
          color: AppColors.mainDark.withOpacity(.1),
        ),
      ),
      title: Text(
        title,
        style: const TextStyle(
          color: AppColors.mainDark,
        ).withLato(),
      ),
      trailing: selected
          ? const Icon(
              Icons.check,
              color: AppColors.mainBlue,
            )
          : null,
    );
  }
}
