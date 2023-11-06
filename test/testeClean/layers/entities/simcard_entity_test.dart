import 'package:flutter_test/flutter_test.dart';
import 'package:package_teste/testeClean/layers/domain/entities/simcard_entity.dart';

main() {
  SimcardEntity simcard = SimcardEntity(
    id: '1',
    cliente: 'ILUMINA SP',
    simcon: '2222002',
    slotsimcon: '1',
    datainstalacao: DateTime(01 - 01 - 1998),
    numerochip: '1234567891234556',
    dataaticacao: DateTime(01 - 01 - 1998),
    fornecedor: "Datelo",
    operadora: "VIVO",
    plano: "300MB COMPARTILHADO",
    apn: "KDL",
    numerolinha: "1234567890",
    numeroip: "123.123.123/12",
    obs: "AMDFKASMNKIPDJAMSP",
  );

  test('espero que nãoi seja nulo',(){
    expect(simcard.id, "1");
  });
}
