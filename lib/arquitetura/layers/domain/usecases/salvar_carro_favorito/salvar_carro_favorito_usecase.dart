import 'package:package_teste/arquitetura/layers/domain/entities/carro_entities.dart';

abstract class SalvarCarroFavoritoUseCase {
  Future<bool> call(CarroEntity carroEntity);
}