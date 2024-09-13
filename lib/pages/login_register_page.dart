import 'package:flippy_app/components/components.dart';
import 'package:flutter/material.dart';

class LoginRegisterPage extends StatelessWidget {
  const LoginRegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(title: "Choose Location", actions: [
        MaterialButton(
            onPressed: () {
              Navigator.pushNamed(context, '/login');
            },
            child: const Text("Login", style: TextStyle(color: Colors.white)))
      ]),
      body: Center(
        child: Container(
          color: const Color(0xFF273773),
          child: Column(
            children: [
              const Spacer(),
              const AppHeader(alternate: true),
              const Spacer(),
              Image.asset("assets/main_avatar.png"),
              const Spacer(),
              AppButton(
                  title: "Login With Google", onTap: () {}, secondary: true),
              const SizedBox(height: 20),
              AppButton(
                  title: "Continue With Facebook",
                  onTap: () {},
                  secondary: true),
              const Spacer()
            ],
          ),
        ),
      ),
    );
  }
}
