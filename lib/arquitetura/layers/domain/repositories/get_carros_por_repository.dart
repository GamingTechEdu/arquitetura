import '../entities/carro_entities.dart';

abstract class GetCarrosPorCorRepository{
  CarroEntity call(String cor);
}