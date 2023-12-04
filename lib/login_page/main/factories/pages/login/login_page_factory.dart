import 'package:flutter/material.dart';
import 'package:package_teste/login_page/main/factories/pages/login/login_presenter_factory.dart';

import '../../../../ui/pages/login/login.dart';

Widget makeLoginPage() {
  return LoginPage(loginPresenter: makeGetxLoginpresenter());
}
