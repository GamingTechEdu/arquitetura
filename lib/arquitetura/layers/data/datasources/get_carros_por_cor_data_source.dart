import 'package:package_teste/arquitetura/layers/data/dtos/carro_dto.dart';

abstract class GetCarrosPorCorDataSource{
  CarroDto call(String cor);
}