import 'package:flutter/material.dart';
import 'package:flippy_app/components/components.dart';
import 'package:flippy_app/themes/themes.dart';

class ResetPasswordPage extends StatefulWidget {
  const ResetPasswordPage({super.key});

  @override
  State<ResetPasswordPage> createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {
  static const String _page = "Reset Password";
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainGrey,
      resizeToAvoidBottomInset: false,
      appBar: const MainAppBar(title: _page),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 20),
            const AppHeader(),
            const SizedBox(height: 30),
            Text(
              _page,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)
                  .withLato(),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: AppTextField(
                title: "New Password",
                controller: _passwordController,
                password: true,
                isObscured: true,
              ),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: AppTextField(
                title: "Confirm Password",
                controller: _confirmPasswordController,
                password: true,
                isObscured: true,
              ),
            ),
            const SizedBox(height: 30),
            AppButton(title: "Reset", onTap: () {}),
          ],
        ),
      ),
    );
  }
}
