import 'package:flutter/material.dart';
import 'package:flippy_app/themes/themes.dart';

class AppTextField extends StatelessWidget {
  final String title;
  final String? placeholder;
  final TextEditingController controller;
  final bool password;
  final bool isObscured;
  final Function()? onPressed;
  const AppTextField({
    super.key,
    required this.title,
    required this.controller,
    this.placeholder,
    this.password = false,
    this.isObscured = false,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 10,
              color: AppColors.mainDark.withOpacity(.5),
            ).withLato(),
          ),
          TextField(
            controller: controller,
            obscureText: isObscured,
            decoration: InputDecoration(
              border: InputBorder.none,
              suffixIcon: password
                  ? IconButton(
                      icon: Icon(
                        isObscured ? Icons.visibility_off : Icons.visibility,
                      ),
                      onPressed: onPressed,
                    )
                  : null,
            ),
          )
        ],
      ),
    );
  }
}
