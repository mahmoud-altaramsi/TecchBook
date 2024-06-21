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

class NewstBooksSuccesse extends NewstBooksState {
  final List<BookModel> books;
  const NewstBooksSuccesse(this.books);
}

final class NewstBooksLoading extends NewstBooksState {}
