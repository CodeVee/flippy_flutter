import 'package:flutter/material.dart';
import 'package:flippy_app/components/components.dart';
import 'package:flippy_app/themes/themes.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  static const _page = "Login";

  bool _rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainGrey,
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          children: [
            const MainAppBar(title: _page),
            const Spacer(),
            const AppHeader(),
            const Spacer(),
            Text(
              "Welcome You!",
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)
                  .withLato(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                children: [
                  Row(children: [
                    Expanded(
                        child: Container(
                      padding: const EdgeInsets.all(16),
                      decoration: const BoxDecoration(
                          border: Border(
                        bottom: BorderSide(
                          color: AppColors.mainBlue,
                          width: 2.0,
                        ),
                      )),
                      child: Text(_page,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF273773))
                              .withLato()),
                    )),
                    Expanded(
                        child: GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, "/register");
                            },
                            child: Container(
                              padding: const EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                  border: Border(
                                bottom: BorderSide(
                                  color: AppColors.mainDark.withOpacity(.5),
                                  width: 1.0,
                                ),
                              )),
                              child: Text("Register",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.lato(
                                      textStyle: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: AppColors.mainDark
                                              .withOpacity(.5)))),
                            )))
                  ]),
                  const SizedBox(height: 20),
                  _getTextBox("User Name"),
                  const SizedBox(height: 10),
                  _getTextBox("Password"),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                        height: 20,
                        width: 20,
                        margin: const EdgeInsets.only(left: 8),
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: AppColors.mainBlue, width: 1.0)),
                        child: Checkbox(
                          value: _rememberMe,
                          onChanged: (changed) {
                            setState(() {
                              _rememberMe = changed ?? false;
                            });
                          },
                          activeColor: Colors.transparent,
                          checkColor: AppColors.mainBlue,
                          side: const BorderSide(
                              color: Colors.transparent, width: 1.0),
                        )),
                    const SizedBox(width: 5),
                    Text("Remember Me",
                        style: const TextStyle(
                                fontSize: 12, color: AppColors.mainDark)
                            .withLato())
                  ],
                ),
                MaterialButton(
                    onPressed: () {},
                    child: const Text(
                      "Forgot Password?",
                      style: TextStyle(fontSize: 10, color: AppColors.mainBlue),
                    ))
              ],
            ),
            const Spacer(),
            AppButton(title: _page, onTap: () {}),
            const Spacer(),
            Column(
              children: [
                Text("Or login with social media",
                    style:
                        const TextStyle(fontSize: 12, color: AppColors.mainDark)
                            .withLato()),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8)),
                      child: Image.asset("assets/google_logo.png"),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8)),
                      child: Image.asset("assets/facebook_logo.png"),
                    )
                  ],
                )
              ],
            ),
            const Spacer()
          ],
        ),
      ),
    );
  }

  Widget _getTextBox(String title) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(5)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,
              style: TextStyle(
                      fontSize: 10, color: AppColors.mainDark.withOpacity(.5))
                  .withLato()),
          const TextField(
              decoration: InputDecoration(
            border: InputBorder.none,
          ))
        ],
      ),
    );
  }
}
