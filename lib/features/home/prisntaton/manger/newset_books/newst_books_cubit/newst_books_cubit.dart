import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:tech_book/features/home/data/models/book_model/book_model.dart';

import '../../../../data/repos/home_rebo.dart';

part 'newst_books_state.dart';

class NewstBooksCubit extends Cubit<NewstBooksState> {
  NewstBooksCubit(this.homeRepo) : super(NewstBooksInitial());
  final HomeRepo homeRepo;

  Future<void> fetchFeaturedBooks() async {
    emit(
      NewstBooksLoading(),
    );
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold(
      (failure) {
        emit(
          NewstBooksFailuer(failure.errMasseg),
        );
      },
      (books) {
        emit(
          NewstBooksSuccesse(books),
        );
      },
    );
  }
}
