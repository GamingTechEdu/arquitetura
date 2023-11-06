import '../entities/simcard_entity.dart';

abstract class SalvarSimcardRepository {
  Future<bool> call(SimcardEntity simcard);
}