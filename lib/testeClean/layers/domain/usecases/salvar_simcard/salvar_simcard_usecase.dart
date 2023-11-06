import '../../entities/simcard_entity.dart';

abstract class SalvarSimcardUsecase {
  Future<bool> call(SimcardEntity simcard);
}