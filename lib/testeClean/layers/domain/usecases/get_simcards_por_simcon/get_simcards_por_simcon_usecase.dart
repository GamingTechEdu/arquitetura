import '../../entities/simcard_entity.dart';

abstract class GetSimcardsPorSimconUsecase {
  SimcardEntity call(String simcon);
}