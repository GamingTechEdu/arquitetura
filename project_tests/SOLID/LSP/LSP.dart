import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// Classe base que define o contrato básico para formas geométricas
abstract class Shape {
  double calculateArea();
}

// Subclasse Circle que herda de Shape
class Circle implements Shape {
  final double radius;

  Circle(this.radius);

  @override
  double calculateArea() {
    return 3.14159 * radius * radius;
  }
}

// Subclasse Rectangle que herda de Shape
class Rectangle implements Shape {
  final double width;
  final double height;

  Rectangle(this.width, this.height);

  @override
  double calculateArea() {
    return width * height;
  }
}



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Criando objetos das subclasses
    Shape circle = Circle(5.0);
    Shape rectangle = Rectangle(4.0, 6.0);

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Liskov Substitution Principle'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Circle Area: ${circle.calculateArea()}'),
              Text('Rectangle Area: ${rectangle.calculateArea()}'),
            ],
          ),
        ),
      ),
    );
  }
}
