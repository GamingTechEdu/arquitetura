import 'package:package_teste/arquitetura/layers/data/datasources/get_carros_por_cor_data_source.dart';
import '../../domain/entities/carro_entities.dart';
import '../../domain/repositories/get_carros_por_cor_repository.dart';

class GetCarrosPorCorRepositoryImp implements GetCarrosPorCorRepository{
  final GetCarrosPorCorDataSource _getCarrosPorCorDataSource;
  GetCarrosPorCorRepositoryImp(this._getCarrosPorCorDataSource);

  @override
  CarroEntity call(String cor) {
    //Chamamos a api e ela respondeu um json;
    return _getCarrosPorCorDataSource(cor);
  }
}
