import 'package:flutter/material.dart';
import 'package:package_teste/login_page/ui/components/login/custom_login_component.dart';
import '../../widgets/custom_text_field_widget.dart';
import 'login_presenter.dart';

class LoginPage extends StatelessWidget {
  final LoginPresenter loginPresenter;

  const LoginPage({super.key, required this.loginPresenter});

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
              onChanged: loginPresenter.setLogin,
              label: 'Login',
            ),
            const SizedBox(height: 20),
            CustomTextFieldWidget(
              onChanged: loginPresenter.setPass,
              label: 'Senha',
              obscureText: true,
            ),
            const SizedBox(height: 40),
            CustomLoginButtonComponent(
              loginPresenter: loginPresenter,
            )
          ],
        ),
      ),
    );
  }
}
