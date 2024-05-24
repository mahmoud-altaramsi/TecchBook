import 'package:go_router/go_router.dart';
import 'package:tech_book/features/home/prisntaton/views/home_view.dart';
import 'package:tech_book/features/spalsh/presentions/view_models/views/spalsh_view.dart';

abstract class AppRouter {
  static const khomeView = '/homeView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: khomeView,
        builder: (context, state) => const HomeView(),
      )
    ],
  );
}
