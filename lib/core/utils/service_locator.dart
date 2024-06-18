import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:tech_book/core/utils/api_service.dart';
import 'package:tech_book/features/home/data/repos/home_reop_impl.dart';

final getIt = GetIt.instance;
void setupServiceLocator() {
  getIt.registerSingleton<ApiService>(
    ApiService(
      Dio(),
    ),
  );
  getIt.registerSingleton<HomeReboImpl>(
    HomeReboImpl(
      getIt.get<ApiService>(),
    ),
  );
}
