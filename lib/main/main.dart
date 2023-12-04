import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../ui/pages/details_page.dart';
import '../ui/components/components.dart';
import '../ui/pages/home/home_page.dart';
import '../../../ui/pages/splash_page.dart';

import 'factories/pages/login/login_page_factory.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: makeAppTheme(),
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => SplashPage()),
        GetPage(name: '/login', page: () => makeLoginPage()),
        GetPage(name: '/home', page: () => HomePage()),
        GetPage(name: '/details', page: () => DetailsPage()),
      ],
    );
  }
}
