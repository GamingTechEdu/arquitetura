import 'package:flutter/material.dart';
import 'package:package_teste/login_page/pages/components/login/custom_login_component.dart';
import '../controller/login_controller.dart';
import 'widgets/custom_text_field_widget.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final loginController = LoginController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(28),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.people,
              size: MediaQuery.of(context).size.height * 0.2,
            ),
            CustomTextFieldWidget(
              onChanged: loginController.setLogin,
              label: 'Login',
            ),
            const SizedBox(height: 20),
            CustomTextFieldWidget(
              onChanged: loginController.setPass,
              label: 'Senha',
              obscureText: true,
            ),
            const SizedBox(height: 40),
            CustomLoginButtonComponent(
              loginController: loginController,
            )
          ],
        ),
      ),
    );
  }
}
