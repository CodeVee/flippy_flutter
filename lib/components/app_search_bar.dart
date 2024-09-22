import 'package:flutter/material.dart';
import 'package:flippy_app/themes/themes.dart';

class AppSearchBar extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;

  const AppSearchBar({
    super.key,
    required this.controller,
    this.hintText = "",
  });

  @override
  State<AppSearchBar> createState() => _AppSearchBarState();
}

class _AppSearchBarState extends State<AppSearchBar> {
  final borderStyle = OutlineInputBorder(
    borderSide: BorderSide.none,
    borderRadius: BorderRadius.circular(32),
  );
  bool showCancel = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
        bottom: 16,
      ),
      decoration: const BoxDecoration(color: AppColors.mainBlue),
      child: TextField(
        onChanged: (value) {
          setState(() {
            showCancel = value.isNotEmpty;
          });
        },
        controller: widget.controller,
        cursorColor: AppColors.mainBlue,
        decoration: InputDecoration(
          prefixIcon: const Icon(Icons.search),
          prefixIconColor: AppColors.mainDark.withOpacity(.5),
          suffixIcon: showCancel
              ? IconButton(
                  onPressed: () {
                    widget.controller.clear();
                    setState(() {
                      showCancel = false;
                    });
                  },
                  icon: const Icon(Icons.cancel_outlined),
                )
              : null,
          suffixIconColor: AppColors.mainBlue,
          isDense: true,
          filled: true,
          contentPadding: const EdgeInsets.all(0),
          fillColor: Colors.white,
          border: borderStyle,
          focusedBorder: borderStyle,
          enabledBorder: borderStyle,
          hintText: widget.hintText,
          hintStyle: TextStyle(
            fontSize: 14,
            color: AppColors.mainDark.withOpacity(.5),
          ).withLato(),
        ),
        style: const TextStyle(
          fontSize: 14,
          color: AppColors.mainDark,
        ).withLato(),
      ),
    );
  }
}
