import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:package_teste/arquitetura/layers/data/datasources/local/get_carros_por_cor_local_datasource_imp.dart';
import 'package:package_teste/arquitetura/layers/data/repositories/get_carros_por_cor_repository_imp.dart';
import 'package:package_teste/arquitetura/layers/data/repositories/salvar_carro_favorito_repository_imp.dart';
import 'package:package_teste/arquitetura/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecase_imp.dart';
import 'package:package_teste/arquitetura/layers/domain/usecases/salvar_carro_favorito/salvar_carro_favorito_usecase_imp.dart';
import 'package:package_teste/arquitetura/layers/presentation/controllers/carro_controller.dart';

class CarroPage extends StatelessWidget {
  CarroPage({super.key});

  var controller = GetIt.I.get<CarroController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(24),
        child: Text(controller.carro.placa),
      ),
    );
  }
}
