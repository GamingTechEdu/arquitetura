import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:package_teste/login_page/ui/pages/details_page.dart';
import 'package:package_teste/login_page/ui/pages/home_page.dart';
import 'package:package_teste/login_page/ui/pages/login/login_page.dart';
import 'package:package_teste/login_page/ui/pages/splash_page.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green
      ),
      initialRoute: '/splash',
      routes: {
        '/splash': (_) => SplashPage(),
        '/login': (_) => LoginPage(),
        '/home': (_) => HomePage(),
        '/details': (_) => DetailsPage(),
      },
    );
  }
}
