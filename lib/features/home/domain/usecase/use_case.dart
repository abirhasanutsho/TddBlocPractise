import 'package:dartz/dartz.dart';
import 'package:tdd_flutter/features/home/data/model/home_model.dart';
import 'package:tdd_flutter/features/home/domain/repository/home_repository.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecase/base_usecase.dart';

class HomeUseCase extends BaseUseCase<List<HomeModel>> {
  HomeRepository _homeRepository;
  HomeUseCase(this._homeRepository);

  @override
  Future<Either<Failure, List<HomeModel>>> call() async {
    return await _homeRepository.getProduct();
  }
}
