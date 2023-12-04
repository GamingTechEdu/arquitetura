import '../../../../presentation/presenters/presenters.dart';
import '../../../../ui/pages/login/login.dart';
import '../../usecases/authentication_factory.dart';

LoginPresenter makeGetxLoginpresenter() {
  return GetxLoginPresenter(
    authentication: makeRemoteAuthentication(),
  );
}
