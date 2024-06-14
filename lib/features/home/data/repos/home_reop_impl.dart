import 'package:dartz/dartz.dart';
import 'package:tech_book/core/errors/failure.dart';
import 'package:tech_book/features/home/data/models/book_model/book_model.dart';
import 'package:tech_book/features/home/data/repos/home_rebo.dart';

class HomeReboImpl implements HomeRepo{
  @override
  Future<Either<Failure, List<BookModel>>> fetchBestSelerBooks() {
    // TODO: implement fetchBestSelerBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }
}