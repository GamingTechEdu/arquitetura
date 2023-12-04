import '../../data/http/http.dart';
import '../../domain/entities/account_entity.dart';


class RemoteAccountModel {
  final String hierarchy;

  RemoteAccountModel(this.hierarchy);

  factory RemoteAccountModel.fromJson(Map json) {
    if (!json.containsKey("hierarchy")) {
      throw HttpError.invalidData;
    }
    return RemoteAccountModel(json["hierarchy"]);
  }

  AccountEntity toEntity() => AccountEntity(hierarchy);
}
