import 'package:dartz/dartz.dart';
import 'package:tech_book/core/errors/failure.dart';
import 'package:tech_book/features/home/data/models/book_model/book_model.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchNewsBooks();
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks();
}
