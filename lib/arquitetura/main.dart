import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:package_teste/arquitetura/layers/presentation/ui/carro_page.dart';

import 'core/inject/inject.dart';

main(){
  Inject.init();
 runApp(
   MaterialApp(
     home: CarroPage()
   )
 );
}