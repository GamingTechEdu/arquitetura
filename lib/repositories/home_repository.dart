import '../domain/entities/post_model.dart';

abstract class HomeRepository {
  Future<List<PostModel>> getList();
}
