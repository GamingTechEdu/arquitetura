import 'package:dio/dio.dart';
import 'package:package_teste/login_page/models/post_model.dart';
import 'package:package_teste/login_page/repositories/home_repository.dart';

class HomeRepositoryImp implements HomeRepository{
  @override
  Future<List<PostModel>> getList() async{
    try{
      var response = await Dio().get('https://jsonplaceholder.typicode.com/posts');
      return (response.data as List).map((e) => PostModel.fromJson(e)).toList();
    }catch(e){
      print(e);
    }
    return [];
  }
}