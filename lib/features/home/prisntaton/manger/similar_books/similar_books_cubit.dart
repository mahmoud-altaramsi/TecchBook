import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:tech_book/features/home/data/models/book_model/book_model.dart';

import '../../../data/repos/home_rebo.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.homeRepo) : super(SimilarBooksInitial());
  final HomeRepo homeRepo;

  Future<void> featchSimilarBooks({required String category}) async {
    emit(
      SimilarBooksLoading(),
    );
    var result = await homeRepo.featchSimilarBooks(category: category);
    result.fold(
      (failure) {
        emit(
          SimilarBooksFailure(failure.errMasseg),
        );
      },
      (books) {
        emit(
          SimilarBooksSuccsess(books),
        );
      },
    );
  }
}
