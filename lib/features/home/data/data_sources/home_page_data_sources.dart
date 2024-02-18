import 'package:dio/dio.dart';
import 'package:tdd_flutter/features/home/data/model/home_model.dart';
import '../../../../core/error/error_model.dart';
import '../../../../core/error/exception.dart';

abstract class HomeRemoteDataSource {
  Future<List<HomeModel>> getProduct();
}

class HomeRemoteDataSourceImpl extends HomeRemoteDataSource {
  @override
  Future<List<HomeModel>> getProduct() async {
    final response =
        await Dio().get("http://moinulhossainkuet.com/api/chapter10");
    if (response.statusCode == 200) {
      return List<HomeModel>.from((response.data['chapterten'] as List)
          .map((e) => HomeModel.fromJson(e)));
    } else {
      throw ServerException(
        errorMessageModel: ErrorMessageModel.fromJson(response.data),
      );
    }
  }
}
