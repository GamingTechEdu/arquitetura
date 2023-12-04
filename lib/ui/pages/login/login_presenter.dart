abstract class LoginPresenter {
  Stream<bool> get inLoaderStream;

  setPass(String value);
  setLogin(String value);
  Future<void> auth();
}
