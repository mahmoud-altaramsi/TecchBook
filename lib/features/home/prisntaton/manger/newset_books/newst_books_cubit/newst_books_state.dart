part of 'newst_books_cubit.dart';

sealed class NewstBooksState extends Equatable {
  const NewstBooksState();

  @override
  List<Object> get props => [];
}

final class NewstBooksInitial extends NewstBooksState {}

final class NewstBooksFailuer extends NewstBooksState {
  final String errMasseg;

  const NewstBooksFailuer(this.errMasseg);
}

final class NewstBooksSuccesse extends NewstBooksState {
  const NewstBooksSuccesse(List<BookModel> books);
}

final class NewstBooksLoading extends NewstBooksState {}
