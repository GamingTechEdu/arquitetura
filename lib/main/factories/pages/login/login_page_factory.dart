import 'package:flutter/material.dart';
import '../../../../../../main/factories/pages/login/login_presenter_factory.dart';

import '../../../../ui/pages/login/login.dart';

Widget makeLoginPage() {
  return LoginPage(loginPresenter: makeGetxLoginpresenter());
}
