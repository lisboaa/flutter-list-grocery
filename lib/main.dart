//importando pacote do front end (material design)
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  var productName = 0;

  void submitInformation() {
    productName = productName + 1;
    print(productName);
  }

  void somar() {}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('Lista de mcado'),
            ),
            body: new GridView.count(
              crossAxisCount: 2,
              children: <Widget>[
                new Container(
                  margin: const EdgeInsets.only(right: 10, left: 10, top: 150),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Infome o nome!',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                new Container(
                  margin: const EdgeInsets.only(
                    right: 10,
                    left: 10,
                    top: 150,
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Informe o valor!',
                      icon: new Icon(Icons.add_shopping_cart),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ],
            )));
  }
}
