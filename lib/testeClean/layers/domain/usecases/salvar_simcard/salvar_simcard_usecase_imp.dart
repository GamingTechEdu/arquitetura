import 'package:package_teste/testeClean/layers/domain/entities/simcard_entity.dart';
import 'package:package_teste/testeClean/layers/domain/usecases/salvar_simcard/salvar_simcard_usecase.dart';
import '../../repositories/salvar_simcard_repository.dart';

class SalvarSimcardUseCaseImp implements SalvarSimcardUsecase {
  final SalvarSimcardRepository _salvarSimcardRepository;
  SalvarSimcardUseCaseImp(this._salvarSimcardRepository);

  @override
  Future<bool> call(SimcardEntity simcard) async{
   return  await _salvarSimcardRepository(simcard);
  }
}