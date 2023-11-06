import 'package:flutter_test/flutter_test.dart';
import 'package:package_teste/testeClean/layers/domain/repositories/get_simcard_repository.dart';
import '../../layers/useCase/use_case_test.dart';

main(){
  GetSimcardsPorSimconRepository? getSimcardsPorSimconRepository = GetSimcardsPorSimconRepositoryImp();

  test('Devolva um Simcard ', (){
    var result = getSimcardsPorSimconRepository!('qualquer coisa');

    print(result.obs);

    expect(result, isNotNull);
  });
}