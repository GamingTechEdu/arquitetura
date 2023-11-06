import 'package:package_teste/testeClean/layers/domain/entities/simcard_entity.dart';
import '../../repositories/get_simcard_repository.dart';
import 'get_simcards_por_simcon_usecase.dart';

class GetSimcardsPorSimconUsecaseImp implements GetSimcardsPorSimconUsecase {
  final GetSimcardsPorSimconRepository _getSimcardsPorSimconRepository;
  GetSimcardsPorSimconUsecaseImp(this._getSimcardsPorSimconRepository);

  @override
  SimcardEntity call(String simcon)  {
    return _getSimcardsPorSimconRepository(simcon);
  }
}
