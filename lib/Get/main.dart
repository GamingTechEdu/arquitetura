import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'SearchController.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final searchController = Get.put(SearchController1()); // Inicializa o controlador

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Exemplo GetX'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(() {
                return Text(
                  'isSearch: ${searchController.isSearch.value}',
                  style: TextStyle(fontSize: 24),
                );
              }),
              TextButton.icon(
                onPressed: () {
                  searchController.setSearchState(true);
                },
                icon: Icon(Icons.add),
                label: Text("Novo SIMCARD"),
              ),
              TextButton.icon(
                onPressed: () {
                  searchController.setSearchState(false);
                },
                icon: Icon(Icons.remove),
                label: Text("Fechar SIMCARD"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}