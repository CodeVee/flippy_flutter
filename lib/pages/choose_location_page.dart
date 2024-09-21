import 'package:flippy_app/themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:flippy_app/components/components.dart';

class ChooseLocationPage extends StatelessWidget {
  const ChooseLocationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MainAppBar(
        title: "Choose Location",
        withLowerColor: true,
      ),
      body: Center(
        child: Container(
          color: AppColors.mainBlue,
          child: Column(
            children: [
              const Spacer(),
              const AppHeader(alternate: true),
              const Spacer(),
              Image.asset("assets/location_avatar.png"),
              const Spacer(),
              AppButton(
                title: "Use Current Location",
                onTap: () {},
                secondary: true,
              ),
              const SizedBox(height: 20),
              AppButton(
                title: "Select Manually",
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
