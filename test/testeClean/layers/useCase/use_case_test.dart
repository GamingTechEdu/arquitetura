import 'package:flutter_test/flutter_test.dart';
import 'package:package_teste/testeClean/layers/domain/entities/simcard_entity.dart';
import 'package:package_teste/testeClean/layers/domain/repositories/get_simcard_repository.dart';
import 'package:package_teste/testeClean/layers/domain/usecases/get_simcards_por_simcon/get_simcards_por_simcon_usecase.dart';
import 'package:package_teste/testeClean/layers/domain/usecases/get_simcards_por_simcon/get_simcards_por_simcon_usecase_imp.dart';


class GetSimcardsPorSimconRepositoryImp
    implements GetSimcardsPorSimconRepository {
  @override
  SimcardEntity call(String simcon) {
    return SimcardEntity(
        id: "1",
        cliente: "ILUMINA SP",
        simcon: "2222001",
        slotsimcon: "1",
        datainstalacao: DateTime(01 - 01 - 2021),
        numerochip: "12345678901234567890",
        dataaticacao: DateTime(01 - 01 - 2021),
        fornecedor: "DATELO",
        operadora: "VIVO",
        plano: "300MB COMPARTILHADO",
        apn: "kdl.br",
        numerolinha: "123456789012345",
        numeroip: "182.198.198/12",
        obs: "sunt aut facere repellat provident occaecati excepturi optio reprehenderit"
    );
  }
}

main() {
  test('espero que não seja nulo', () {
    GetSimcardsPorSimconUsecase useCase = GetSimcardsPorSimconUsecaseImp(
        GetSimcardsPorSimconRepositoryImp());

    var result = useCase('2222001');

    expect(result, isInstanceOf<SimcardEntity>());
  });
}