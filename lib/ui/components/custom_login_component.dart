// import 'package:flutter/material.dart';
// import 'package:package_teste/login_page/ui/pages/login/login_presenter.dart';
// import '../../../presentation/presenters/getx_login_presenter.dart';

// class CustomLoginButtonComponent extends StatelessWidget {
//   final LoginPresenter loginPresenter;

//   CustomLoginButtonComponent({super.key, required this.loginPresenter});

//   @override
//   Widget build(BuildContext context) {
//     return StreamBuilder<bool?>(
//         stream: loginPresenter.inLoaderStream,
//         builder: (context, snapshot) {
//           return (snapshot.data ?? false)
//               ? CircularProgressIndicator()
//               : ElevatedButton(
//                   onPressed: () {
//                     print(snapshot.data);
//                     loginPresenter.auth().then((result) {
//                       if (result) {
//                         Navigator.of(context).pushReplacementNamed('/home');
//                       } else {
//                         ScaffoldMessenger.of(context).showSnackBar(
//                           const SnackBar(
//                             content: Text('Erro ao logar!'),
//                             backgroundColor: Colors.red,
//                             duration: Duration(seconds: 4),
//                           ),
//                         );
//                       }
//                     });
//                   },
//                   child: const Text('Login'),
//                 );
//         });
//   }
// }

import 'package:flutter/material.dart';
import '../../../../../ui/pages/login/login_presenter.dart';

class CustomLoginButtonComponent extends StatelessWidget {
  final LoginPresenter loginPresenter;

  CustomLoginButtonComponent({super.key, required this.loginPresenter});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<bool?>(
        stream: loginPresenter.inLoaderStream,
        builder: (context, snapshot) {
          return (snapshot.data ?? false)
              ? CircularProgressIndicator()
              : ElevatedButton(
                  onPressed: loginPresenter.auth,
                  child: const Text('Login'),
                );
        });
  }
}
