import 'package:package_teste/arquitetura/layers/domain/repositories/get_carros_por_repository.dart';

import '../../entities/carro_entities.dart';
import 'get_carros_por_cor_usecase.dart';

class GetCarrosPorCorUseCaseImp implements GetCarrosPorCorUseCase{

  final GetCarrosPorCorRepository _getCarrosPorCorRepository;
  GetCarrosPorCorUseCaseImp(this._getCarrosPorCorRepository);


  @override
  CarroEntity call(String cor) {
    return _getCarrosPorCorRepository(cor);
  }

}