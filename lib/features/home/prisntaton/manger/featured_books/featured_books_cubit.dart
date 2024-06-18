import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tech_book/features/home/data/repos/home_rebo.dart';
import 'package:tech_book/features/home/prisntaton/manger/featured_books/featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitial());
  // FeaturedBooksCubit(super.initialState, this.homeRepo);
  final HomeRepo homeRepo;

  Future<void> fetchFeaturedBooks() async {
    emit(
      FeaturedBooksLoading(),
    );
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold(
      (failure) {
        emit(
          FeaturedBooksFailure(failure.errMasseg),
        );
      },
      (books) {
        emit(
          FeaturedBooksSuccess(books),
        );
      },
    );
  }
}
