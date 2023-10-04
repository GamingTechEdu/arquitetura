import 'package:get/get.dart';

class SearchController1 extends GetxController {
  var isSearch = false.obs; // Use o obs para criar uma variável observável

  void setSearchState(bool newState) {
    isSearch.value = newState;
  }
}
