import 'package:dartz/dartz.dart';

import 'package:tdd_flutter/features/home/data/model/home_model.dart';

import '../../../../core/error/failure.dart';

abstract class HomeRepository {
  Future<Either<Failure, List<HomeModel>>> getProduct();
}
