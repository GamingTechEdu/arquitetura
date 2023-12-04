import 'package:package_teste/domain/entities/post_model.dart';

abstract class HomePresenter {
  Stream<List> get postsStream;

  Future<List<PostModel?>>? fetch();
}
