import 'package:dartz/dartz.dart';
import 'package:tech_book/core/errors/failure.dart';
import 'package:tech_book/features/home/data/models/book_model/book_model.dart';

abstract class HomeRepo {
  Future<Either<Failure,List<BookModel>>> fetchBestSelerBooks();
  Future<Either<Failure,List<BookModel>>> fetchFeaturedBooks();
}
