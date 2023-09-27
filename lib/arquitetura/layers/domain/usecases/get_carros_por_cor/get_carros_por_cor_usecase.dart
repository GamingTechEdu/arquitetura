import 'package:package_teste/arquitetura/layers/domain/entities/carro_entities.dart';

abstract class GetCarrosPorCorUseCase{
  CarroEntity call(String cor);
}