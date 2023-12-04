// import 'package:app_kdl/data/models/remote_account_model.dart';
// import 'package:app_kdl/domain/helpers/domain_error.dart';

import '../../data/http/http.dart';
import '../../domain/entities/entities.dart';
import '../../domain/helpers/domain_error.dart';
import '../../domain/usecases/usecases.dart';
import '../models/models.dart';

class RemoteAuthentication implements Authentication {
  final HttpClient httpClient;
  final String url;

  RemoteAuthentication({required this.httpClient, required this.url});

  @override
  Future<AccountEntity> auth(AuthenticationParams params) async {
    final body = RemoteAuthenticationParams.fromDomain(params).toJson();
    try {
      final httpResponse = await httpClient.request(
        url: url,
        method: 'post',
        body: body,
      );
      return RemoteAccountModel.fromJson(httpResponse!).toEntity();
    } on HttpError catch (error) {
      throw error == HttpError.unauthorized
          ? DomainError.invalidCredentials
          : DomainError.unexpectedError;
    }
  }
}

class RemoteAuthenticationParams {
  final String username;
  final String password;

  RemoteAuthenticationParams({
    required this.username,
    required this.password,
  });

  factory RemoteAuthenticationParams.fromDomain(AuthenticationParams params) =>
      RemoteAuthenticationParams(
        username: params.username,
        password: params.password,
      );

  Map toJson() => {
        'username': username,
        'password': password,
      };
}
