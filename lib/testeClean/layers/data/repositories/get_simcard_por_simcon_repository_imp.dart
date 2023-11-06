import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;
import '../../domain/repositories/get_simcard_repository.dart';
import '../dtos/simcard_dto.dart';

class GetSimcardsPorSimconRepositoryImp implements GetSimcardsPorSimconRepository{

  @override
  call(String simcon) {
    var json = {
      "id": "1",
      "cliente": "ILUMINA SP",
      "simcon": "2222001",
      "slotsimcon": "1",
      "datainstalacao": DateTime(01 - 01 - 2021),
      "numerochip": "12345678901234567890",
      "dataaticacao": DateTime(01 - 01 - 2021),
      "fornecedor": "DATELO",
      "operadora": "VIVO",
      "plano": "300MB COMPARTILHADO",
      "apn": "kdl.br",
      "numerolinha": "123456789012345",
      "numeroip": "182.198.198/12",
      "obs": "sunt aut facere repellat provident occaecati excepturi optio reprehenderit"
    };

    return SimcardDto.fromMap(json);

    ;
  }
}