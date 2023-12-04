import 'package:flutter/material.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      margin: const EdgeInsets.only(bottom: 32),
      // decoration: BoxDecoration(
      // gradient: LinearGradient(
      //   begin: Alignment.topRight,
      //   end: Alignment.bottomLeft,
      //   colors: [
      //     Theme.of(context).primaryColorLight,
      //     Theme.of(context).primaryColorDark,
      //   ],
      // ),
      // boxShadow: const [
      //   BoxShadow(
      //       offset: Offset(0, 0),
      //       spreadRadius: 0,
      //       blurRadius: 4,
      //       color: Colors.black),
      // ],
      // borderRadius: const BorderRadius.only(
      //   bottomLeft: Radius.circular(50),
      //   bottomRight: Radius.circular(50),
      // )),
      child: Image.asset('lib/ui/assets/logosf.png'),
    );
  }
}
