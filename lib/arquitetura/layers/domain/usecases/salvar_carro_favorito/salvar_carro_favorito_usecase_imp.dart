import 'package:package_teste/arquitetura/layers/domain/entities/carro_entities.dart';
import 'package:package_teste/arquitetura/layers/domain/repositories/salvar_carro_favorito_repository.dart';
import 'package:package_teste/arquitetura/layers/domain/usecases/salvar_carro_favorito/salvar_carro_favorito_usecase.dart';

class SalvarCarroFavoritoUseCaseImp implements SalvarCarroFavoritoUseCase{
  final SalvarCarroFavoritoRepository _salvarCarroFavoritoRepository;
  SalvarCarroFavoritoUseCaseImp(this._salvarCarroFavoritoRepository);

  @override
  Future<bool> call(CarroEntity carroEntity) async {
    carroEntity.setLogica();
   return await _salvarCarroFavoritoRepository(carroEntity);
  }
}