import 'package:flutter_test/flutter_test.dart';
import 'package:package_teste/arquitetura/layers/data/datasources/local/get_carros_por_cor_local_datasource_imp.dart';
import 'package:package_teste/arquitetura/layers/data/repositories/get_carros_por_cor_repository_imp.dart';
import 'package:package_teste/arquitetura/layers/domain/entities/carro_entities.dart';
import 'package:package_teste/arquitetura/layers/domain/repositories/get_carros_por_repository.dart';
import 'package:package_teste/arquitetura/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecase.dart';
import 'package:package_teste/arquitetura/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecase_imp.dart';

main() {
  test('Deve devolver uma Instância de carro quando passar qualquer cor', () {
    GetCarrosPorCorUseCase useCase = GetCarrosPorCorUseCaseImp(
      GetCarrosPorCorRepositoryImp(
        GetCarrosPorCorLocalDataSourceImp(),
      ),
    );
    var result = useCase('azul');
    expect(result, isInstanceOf<CarroEntity>());
  });

  test('Deve retornar um carro de 4 portas quando vermnelho', () {
    GetCarrosPorCorUseCase useCase = GetCarrosPorCorUseCaseImp(
      GetCarrosPorCorRepositoryImp(
        GetCarrosPorCorLocalDataSourceImp(),
      ),
    );
    var result = useCase('vermelho');
    expect(result.qtdPortas, 4);
  });

  test('Deve retornar um carro de 2 portas qunado qualquer cor exceto vermelho',
      () {
    GetCarrosPorCorUseCase useCase = GetCarrosPorCorUseCaseImp(
      GetCarrosPorCorRepositoryImp(
        GetCarrosPorCorLocalDataSourceImp(),
      ),
    );
    var result = useCase('verde');
    expect(result.qtdPortas, 2);
  });
}
