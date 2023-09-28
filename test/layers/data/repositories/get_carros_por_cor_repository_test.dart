import 'package:flutter_test/flutter_test.dart';
import 'package:package_teste/arquitetura/layers/data/datasources/get_carros_por_cor_data_source.dart';
import 'package:package_teste/arquitetura/layers/data/datasources/local/get_carros_por_cor_local_datasource_imp.dart';
import 'package:package_teste/arquitetura/layers/data/repositories/get_carros_por_cor_repository_imp.dart';
import 'package:package_teste/arquitetura/layers/domain/repositories/get_carros_por_cor_repository.dart';

main(){
  GetCarrosPorCorDataSource dataSource = GetCarrosPorCorLocalDataSourceImp();
  GetCarrosPorCorRepository repository = GetCarrosPorCorRepositoryImp(dataSource);
  test('Devolva um carro independente da cor',() {
    var result = repository('qualquer');

    expect(result, isNotNull);
  });
}