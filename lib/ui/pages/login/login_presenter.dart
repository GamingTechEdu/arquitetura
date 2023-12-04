abstract class LoginPresenter {
  Stream<String?>? get loginErrorStream;
  Stream<bool> get inLoaderStream;
  Stream<String?> get mainErrorStream;

  setLogin(String value);
  setPass(String value);
  Future<void> auth();
}
