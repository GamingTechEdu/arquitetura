import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../../main/factories/pages/login/login_presenter_factory.dart';

import '../../../../ui/pages/login/login.dart';

// Widget makeLoginPage(BuildContext context) {
//   double screenWidth = MediaQuery.of(context).size.width;
//   double minWidthForNewPage = 1200.0;
//   if (screenWidth >= minWidthForNewPage) {
//     return AnotherPage();
//   } else {
//     return LoginPage(loginPresenter: makeGetxLoginpresenter());
//   }
// }

// class AnotherPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Outra Página'),
//       ),
//       body: Center(
//         child: Text('Esta é outra página!'),
//       ),
//     );
//   }
// }

Widget makeLoginPage() {
  return LoginPage(loginPresenter: makeGetxLoginpresenter());
}
