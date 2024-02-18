import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:tdd_flutter/core/error/failure.dart';
import 'package:tdd_flutter/features/home/data/model/home_model.dart';
import 'package:tdd_flutter/features/home/domain/repository/home_repository.dart';

import '../../../../core/error/exception.dart';
import '../data_sources/home_page_data_sources.dart';

class HomeRepositoryImpl extends HomeRepository {
  final HomeRemoteDataSource _baseSearchRemoteDataSource;

  HomeRepositoryImpl(this._baseSearchRemoteDataSource);

  @override
  Future<Either<Failure, List<HomeModel>>> getProduct() async {
    try {
      final result = await _baseSearchRemoteDataSource.getProduct();
      return Right(result);
    } on ServerException catch (failure) {
      return Left(ServerFailure(failure.errorMessageModel.statusMessage));
    } on DioError catch (failure) {
      return Left(ServerFailure(failure.message!));
    }
  }
}
