import 'package:flutter/material.dart';

// Classe abstrata representando um produto genérico
abstract class Product {
  String name;
  double price;

  Product(this.name, this.price);
}

// Classe concreta representando um tipo de produto: Eletrônico
class ElectronicProduct extends Product {
  String brand;

  ElectronicProduct(String name, double price, this.brand) : super(name, price);
}

// Classe concreta representando um tipo de produto: Vestuário
class ApparelProduct extends Product {
  String size;

  ApparelProduct(String name, double price, this.size) : super(name, price);
}

// Classe que exibe detalhes do produto
class ProductDetailsPage extends StatelessWidget {
  final Product product;

  ProductDetailsPage(this.product);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalhes do Produto'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Nome: ${product.name}'),
            Text('Preço: R\$ ${product.price.toStringAsFixed(2)}'),
            if (product is ElectronicProduct)
              Text('Marca: ${(product as ElectronicProduct).brand}')
            else if (product is ApparelProduct)
              Text('Tamanho: ${(product as ApparelProduct).size}'),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: ProductDetailsPage(
      ElectronicProduct('Smartphone', 1500.0, 'Example Brand'),
    ),
  ));
}
