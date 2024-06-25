import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:tech_book/core/utils/service_locator.dart';
import 'package:tech_book/features/home/data/models/book_model/book_model.dart';
import 'package:tech_book/features/home/data/repos/home_rebo.dart';
import 'package:tech_book/features/home/data/repos/home_reop_impl.dart';
import 'package:tech_book/features/home/prisntaton/manger/similar_books/similar_books_cubit.dart';
import 'package:tech_book/features/home/prisntaton/views/book_details_list_veiw.dart';
import 'package:tech_book/features/home/prisntaton/views/home_view.dart';
import 'package:tech_book/features/search/search_view.dart';
import 'package:tech_book/features/spalsh/presentions/view_models/views/spalsh_view.dart';

abstract class AppRouter {
  static const khomeView = '/homeView';
  static const kbookDetailsveiw = '/bookDetailsveiw';
  static const ksearchView = '/searchView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: khomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: ksearchView,
        builder: (context, state) => const SearchView(),
      ),
      GoRoute(
        path: kbookDetailsveiw,
        builder: (context, state) => BlocProvider(
          create: (context) => SimilarBooksCubit(getIt.get<HomeReboImpl>()),
          child: BookDetailsListView(
            bookModel: state.extra as BookModel,
          ),
        ),
      )
    ],
  );
}
