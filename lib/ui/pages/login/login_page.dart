import 'package:flutter/material.dart';

import '../../components/components.dart';
import '../../widgets/custom_text_field_widget.dart';
import 'login_presenter.dart';

class LoginPage extends StatefulWidget {
  final LoginPresenter loginPresenter;

  const LoginPage({super.key, required this.loginPresenter});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(builder: (context) {
        widget.loginPresenter.mainErrorStream.listen((error) {
          showErrorMessage(context, error!);
        });

        return Container(
          padding: const EdgeInsets.all(28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const LoginHeader(),
              CustomTextFieldWidget(
                onChanged: widget.loginPresenter.setLogin,
                label: 'Login',
              ),
              const SizedBox(height: 20),
              CustomTextFieldWidget(
                onChanged: widget.loginPresenter.setPass,
                label: 'Senha',
                obscureText: true,
              ),
              const SizedBox(height: 40),
              CustomLoginButtonComponent(
                loginPresenter: widget.loginPresenter,
              )
            ],
          ),
        );
      }),
    );
  }
}
