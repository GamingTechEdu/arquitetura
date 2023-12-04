import 'package:equatable/equatable.dart';

import '../entities/entities.dart';

abstract class Authentication {
  Future<AccountEntity> auth(AuthenticationParams params);
}

class AuthenticationParams extends Equatable {
  final String username;
  final String password;

  @override
  List get props => [username, password];

  const AuthenticationParams({
    required this.username,
    required this.password,
  });
}
