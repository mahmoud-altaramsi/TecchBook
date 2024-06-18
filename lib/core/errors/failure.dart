import 'package:dio/dio.dart';

abstract class Failure {
  final String errMasseg;
  Failure(this.errMasseg);
}

class ServiseFailure extends Failure {
  ServiseFailure(super.errMasseg);
  factory ServiseFailure.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServiseFailure("connection Timeout with api servier");
      case DioExceptionType.sendTimeout:
        return ServiseFailure("Send Timeout with api servier");
      case DioExceptionType.receiveTimeout:
        return ServiseFailure("receive Timeout with api servier");
      case DioExceptionType.badCertificate:
        return ServiseFailure("bad Certificate Timeout with api servier");

      case DioExceptionType.badResponse:
        return ServiseFailure.fromResponse(
            dioException.response!.statusCode!, dioException.response!.data!);
      case DioExceptionType.cancel:
        return ServiseFailure('Request to api server was cancled');

      case DioExceptionType.unknown:
        if (dioException.message!.contains('SoketException')) {
          return ServiseFailure('No Internet Connection');
        }
      default:
        return ServiseFailure('Null');
    }
    return ServiseFailure('Oops ther was an error !');
  }
  factory ServiseFailure.fromResponse(int statusCode, dynamic resopnce) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServiseFailure(resopnce['error']['message']);
    } else if (statusCode == 404) {
      return ServiseFailure('Your Request, not Found pleses try later!');
    } else if (statusCode == 500) {
      return ServiseFailure('interner server error,  plese try later !');
    } else {
      return ServiseFailure('Oops ther was an error !');
    }
  }
}
