import 'package:package_teste/testeClean/layers/domain/entities/simcard_entity.dart';

import '../../domain/repositories/salvar_simcard_repository.dart';

class SalvarSimcardRepositoryImp implements SalvarSimcardRepository {

  @override
  Future<bool> call(SimcardEntity simcard) {
    return Future.value(true);
  }
}