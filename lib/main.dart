import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:tech_book/constant.dart';
import 'package:tech_book/core/utils/app_routers.dart';
import 'package:tech_book/core/utils/service_locator.dart';
import 'package:tech_book/features/home/data/repos/home_reop_impl.dart';
import 'package:tech_book/features/home/prisntaton/manger/featured_books/featured_books_cubit.dart';
import 'package:tech_book/features/home/prisntaton/manger/newset_books/newst_books_cubit/newst_books_cubit.dart';

void main() {
  setupServiceLocator();
  runApp(const TechBook());
}

class TechBook extends StatelessWidget {
  const TechBook({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) => NewstBooksCubit(getIt.get<HomeReboImpl>())),
        BlocProvider(
            create: (context) => FeaturedBooksCubit(getIt.get<HomeReboImpl>())),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: primaryColorScafold,
        ),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
