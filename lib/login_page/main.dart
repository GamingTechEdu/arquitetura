import 'package:flutter/material.dart';
import 'package:package_teste/login_page/pages/login_page.dart';
import 'package:package_teste/login_page/pages/splash_page.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green
      ),
      initialRoute: '/splash',
      routes: {
        '/splash': (_) => SplashPage(),
        '/login': (_) => LoginPage()
      },
    );
  }
}
