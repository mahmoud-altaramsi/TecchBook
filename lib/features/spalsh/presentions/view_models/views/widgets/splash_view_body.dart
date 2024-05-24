import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tech_book/core/utils/app_routers.dart';
import 'package:tech_book/core/utils/assets.dart';

import 'sliding_text.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  @override
  void initState() {
    super.initState();
    ititSlidingAnimation();
    navigatToHome();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          AssetsMultyApp.logo,
        ),
        SlidingText(slidingAnimation: slidingAnimation),
      ],
    );
  }

  void navigatToHome() {
    Future.delayed(
      const Duration(seconds: 2),
      () {
        GoRouter.of(context).push(AppRouter.khomeView);
      },
    );
  }

  void ititSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    animationController.forward();
    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 7), end: Offset.zero)
            .animate(animationController);
  }
}
