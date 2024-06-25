part of 'similar_books_cubit.dart';

sealed class SimilarBooksState extends Equatable {
  const SimilarBooksState();

  @override
  List<Object> get props => [];
}

class SimilarBooksInitial extends SimilarBooksState {}

class SimilarBooksSuccsess extends SimilarBooksState {
  final List<BookModel> books;

  const SimilarBooksSuccsess(this.books);
}

class SimilarBooksFailure extends SimilarBooksState {
  final String errMasege;

  const SimilarBooksFailure(this.errMasege);
}

class SimilarBooksLoading extends SimilarBooksState {}
