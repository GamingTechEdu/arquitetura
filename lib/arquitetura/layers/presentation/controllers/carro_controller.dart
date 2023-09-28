import 'package:package_teste/arquitetura/layers/domain/entities/carro_entities.dart';
import 'package:package_teste/arquitetura/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecase.dart';
import 'package:package_teste/arquitetura/layers/domain/usecases/salvar_carro_favorito/salvar_carro_favorito_usecase.dart';

class CarroController{
  final GetCarrosPorCorUseCase _getCarrosPorCorUseCase;
  final SalvarCarroFavoritoUseCase _salvarCarroFavoritoUseCase;

  CarroController(
      this._getCarrosPorCorUseCase,
      this._salvarCarroFavoritoUseCase,
  ){
    getCarrosPorCor('vermelho');
  }

  late CarroEntity carro;

  getCarrosPorCor(String cor){
    carro = _getCarrosPorCorUseCase(cor);
  }

  salvarCarroFavorito(CarroEntity carro) async{
    var result = await _salvarCarroFavoritoUseCase(carro);
  }
}