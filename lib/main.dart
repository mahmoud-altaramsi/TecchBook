import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tech_book/constant.dart';
import 'package:tech_book/core/utils/app_routers.dart';
import 'features/spalsh/presentions/view_models/views/spalsh_view.dart';

void main() {
  runApp(const TechBook());
}

class TechBook extends StatelessWidget {
  const TechBook({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: primaryColorScafold,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
