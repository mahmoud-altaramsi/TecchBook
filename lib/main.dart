import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'features/spalsh/presentions/view_models/views/spalsh_view.dart';

void main() {
  runApp(const TechBook());
}

class TechBook extends StatelessWidget {
  const TechBook({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      home: SplashView(),
    );
  }
}
