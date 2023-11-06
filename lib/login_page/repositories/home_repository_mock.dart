import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:package_teste/login_page/models/post_model.dart';
import 'package:package_teste/login_page/repositories/home_repository.dart';

class HomeRepositoryMock implements HomeRepository{

  @override
  Future<List<PostModel>> getList() async{
    var value = await rootBundle.loadString('assets/data.json');
    List postJson = jsonDecode(value);
    print(postJson);
    return postJson.map((e) => PostModel.fromJson(e)).toList();
  }
}