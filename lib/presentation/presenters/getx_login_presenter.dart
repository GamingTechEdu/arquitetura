import 'package:get/get.dart';

import '../../domain/helpers/helpers.dart';
import '../../domain/usecases/usecases.dart';
import '../../ui/pages/login/login_presenter.dart';

class GetxLoginPresenter extends GetxController implements LoginPresenter {
  final Authentication authentication;

  String? _login;
  String? _pass;

  final _inLoader = Rx<bool>(false);
  final _loginError = Rx<String?>(null);
  final _mainError = Rx<String?>(null);

  @override
  Stream<bool> get inLoaderStream => _inLoader.stream;
  @override
  Stream<String?>? get loginErrorStream => _loginError.stream;
  @override
  Stream<String?> get mainErrorStream => _mainError.stream;

  GetxLoginPresenter({required this.authentication});

  @override
  setLogin(String value) => _login = value;
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
    _inLoader.value = true;
    try {
      await authentication.auth(AuthenticationParams(
        username: _login!,
        password: _pass!,
      ));
      Get.toNamed('/home');
    } on DomainError catch (error) {
      _mainError.value = error.description ?? '';
    }
    _inLoader.value = false;
  }
}
