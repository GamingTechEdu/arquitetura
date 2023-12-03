import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:package_teste/login_page/service/prefs_service.dart';

import '../../ui/pages/login/login_presenter.dart';

class GetxLoginPresenter extends GetxController implements LoginPresenter{
  var inLoader = Rx<bool>(false);

  @override
  Stream<bool> get inLoaderStream => inLoader.stream;

  String? _login;
  @override
  setLogin(String value) => _login = value;

  String? _pass;
  @override
  setPass(String value) => _pass = value;

  @override
  Future<bool> auth() async{
    inLoader.value = true;
    await Future.delayed(Duration(seconds: 2));
    inLoader.value = false;
    if( _login == "admin" && _pass == "123"){
      PrefsService.save(_login!);
      return true;
    }
    return false;
  }
}