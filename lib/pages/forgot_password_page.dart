import 'package:flutter/material.dart';
import 'package:flippy_app/components/components.dart';
import 'package:flippy_app/themes/themes.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  static const String _page = "Forgot Password";
  final _emailController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
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
              child: AppTextField(title: "Email", controller: _emailController),
            ),
            const SizedBox(height: 30),
            AppButton(title: "Submit Now", onTap: () {}),
          ],
        ),
      ),
    );
  }
}
