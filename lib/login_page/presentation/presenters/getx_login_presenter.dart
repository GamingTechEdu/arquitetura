import 'package:get/get.dart';

import '../../domain/usecases/usecases.dart';
import '../../ui/pages/login/login_presenter.dart';

class GetxLoginPresenter extends GetxController implements LoginPresenter {
  final Authentication authentication;

  var inLoader = Rx<bool>(false);

  @override
  Stream<bool> get inLoaderStream => inLoader.stream;

  GetxLoginPresenter({required this.authentication});

  String? _login;
  @override
  setLogin(String value) => _login = value;

  String? _pass;
  @override
  setPass(String value) => _pass = value;

  // @override
  // Future<bool> auth() async{
  //   inLoader.value = true;
  //   await Future.delayed(Duration(seconds: 2));
  //   inLoader.value = false;
  //   if( _login == "admin" && _pass == "123"){
  //     PrefsService.save(_login!);
  //     return true;
  //   }
  //   return false;
  // }

  @override
  Future<void> auth() async {
    inLoader.value = true;
    try {
      await authentication.auth(AuthenticationParams(
        username: _login!,
        password: _pass!,
      ));
      print(_login);
      print(_pass);
      Get.toNamed('/home');
    } catch (error) {
      print(error);
    }
    inLoader.value = false;
  }
}
