import 'package:flutter_test/flutter_test.dart';
import 'package:package_teste/arquitetura/layers/domain/entities/carro_entities.dart';

main(){
  test('Espero que entidade não seja nula', (){
    CarroEntity carroEntity = CarroEntity(
        placa: "ABC123",
        qtdPortas: 2,
        valor: 1000.00
    );
    expect(carroEntity, isNotNull);
  });

  test('Espero que a quantidade de portas seja 2', (){
    CarroEntity carroEntity = CarroEntity(
        placa: "ABC123",
        qtdPortas: 2,
        valor: 1000.00
    );
    expect(carroEntity.qtdPortas, 2);
  });

  test('Espero que a valorReal seja 30000', (){
    CarroEntity carroEntity = CarroEntity(
        placa: "ABC123",
        qtdPortas: 2,
        valor: 15000.00,
    );
    carroEntity.setLogica();

    var resultadoEsperado = 30000.00;
    expect(carroEntity.valor, resultadoEsperado);
  });
}