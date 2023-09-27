import '../entities/carro_entities.dart';

abstract class SalvarCarroFavoritoRepository {
 Future<bool> call(CarroEntity carroEntity);
}