import 'package:flutter_test/flutter_test.dart';
import 'package:package_teste/arquitetura/layers/domain/entities/carro_entities.dart';
import 'package:package_teste/arquitetura/layers/domain/repositories/salvar_carro_favorito_repository.dart';
import 'package:package_teste/arquitetura/layers/domain/usecases/salvar_carro_favorito/salvar_carro_favorito_usecase.dart';
import 'package:package_teste/arquitetura/layers/domain/usecases/salvar_carro_favorito/salvar_carro_favorito_usecase_imp.dart';

class SalvarCarroFavoritoRepositoryImp
    implements SalvarCarroFavoritoRepository {
  @override
  Future<bool> call(CarroEntity carroEntity) async {
    return carroEntity.valor > 0;
  }
}

main() {
  test('Espero que salve o carro com sucesso', () async {
    SalvarCarroFavoritoUseCase useCase =
        SalvarCarroFavoritoUseCaseImp(SalvarCarroFavoritoRepositoryImp());

    var carro = CarroEntity(placa: 'placa', qtdPortas: 2, valor: 1);
    var result = await useCase(carro);

    expect(result, true);
  });

  test('Espero que não salve o carro quando valor for menor ou igual a 0', () async {
    SalvarCarroFavoritoUseCase useCase =
    SalvarCarroFavoritoUseCaseImp(SalvarCarroFavoritoRepositoryImp());

    var carro = CarroEntity(placa: 'placa', qtdPortas: 2, valor: 0);
    var result = await useCase(carro);

    expect(result, false);
  });
}
