import '../../domain/entities/carro_entities.dart';
import '../../domain/repositories/salvar_carro_favorito_repository.dart';

class SalvarCarroFavoritoRepositoryImp implements SalvarCarroFavoritoRepository {
  @override
  Future<bool> call(CarroEntity carroEntity) async {
    return carroEntity.valor > 0;
  }
}