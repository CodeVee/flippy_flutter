import 'package:flutter/material.dart';
import 'pages/pages.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const WelcomePage(),
        '/login-register': (context) => const LoginRegisterPage(),
        '/login': (context) => const LoginPage(),
      },
    );
  }
}
