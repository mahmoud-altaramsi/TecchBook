import 'package:flutter/material.dart';
import 'package:tech_book/features/spalsh/presentions/view_models/views/widgets/splash_view_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      
      body: SplashViewBody(),
    );
  }
}
