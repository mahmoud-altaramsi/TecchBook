import 'package:flutter/material.dart';
import 'package:tech_book/core/utils/assets.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          AssetsMultyApp.logo,
        ),
        const Text(
          "Read Free Book",
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
