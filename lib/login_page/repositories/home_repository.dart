import 'package:package_teste/login_page/models/post_model.dart';

abstract class HomeRepository{
  Future<List<PostModel>> getList();
}