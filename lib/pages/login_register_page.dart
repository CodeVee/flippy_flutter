import 'package:flippy_app/components/components.dart';
import 'package:flippy_app/themes/app_colors.dart';
import 'package:flutter/material.dart';

class LoginRegisterPage extends StatelessWidget {
  const LoginRegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AuthAppBar(
        title: "Choose Location",
        withLowerColor: true,
        actions: [
          MaterialButton(
            onPressed: () {
              Navigator.pushNamed(context, '/login');
            },
            child: const Text(
              "Login",
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
      body: Center(
        child: Container(
          color: AppColors.mainBlue,
          child: Column(
            children: [
              const Spacer(),
              const AppHeader(alternate: true),
              const Spacer(),
              Image.asset("assets/main_avatar.png"),
              const Spacer(),
              AppButton(
                title: "Login With Google",
                onTap: () {
                  Navigator.pushNamed(context, "/choose-location");
                },
                secondary: true,
              ),
              const SizedBox(height: 20),
              AppButton(
                title: "Continue With Facebook",
                onTap: () {},
                secondary: true,
              ),
              const Spacer()
            ],
          ),
        ),
      ),
    );
  }
}
