import 'package:flippy_app/components/components.dart';
import 'package:flutter/material.dart';

class LoginRegisterPage extends StatelessWidget {
  const LoginRegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Choose Location",
            style: TextStyle(color: Colors.white, fontSize: 14)),
        backgroundColor: const Color(0xFF273773),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_sharp, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          MaterialButton(
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              },
              child: const Text("Login", style: TextStyle(color: Colors.white)))
        ],
      ),
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
