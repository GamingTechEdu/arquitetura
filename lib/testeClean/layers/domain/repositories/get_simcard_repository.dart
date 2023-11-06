import '../entities/simcard_entity.dart';

abstract class GetSimcardsPorSimconRepository {
 SimcardEntity call(String simcon);
}