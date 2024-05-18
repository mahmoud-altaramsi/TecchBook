import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tech_book/constant.dart';

import 'features/spalsh/presentions/view_models/views/spalsh_view.dart';

void main() {
  runApp(const TechBook());
}

class TechBook extends StatelessWidget {
  const TechBook({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: primaryColorScafold,
      ),
      debugShowCheckedModeBanner: false,
      home: const SplashView(),
    );
  }
}
