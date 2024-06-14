import 'package:dartz/dartz.dart';
import 'package:tech_book/core/errors/failure.dart';
import 'package:tech_book/core/utils/api_service.dart';
import 'package:tech_book/features/home/data/models/book_model/book_model.dart';
import 'package:tech_book/features/home/data/repos/home_rebo.dart';

class HomeReboImpl implements HomeRepo {
  ApiService apiService;
  HomeReboImpl(this.apiService);
  @override
  Future<Either<Failure, List<BookModel>>> fetchNewsBooks() async {
    try {
      var data = await apiService.get(
          endPoint:
              'volumes?Filtering-free-ebooks&Sorting=newest &q=subject: Programming');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      return left(ServiseFailure());
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }
}
