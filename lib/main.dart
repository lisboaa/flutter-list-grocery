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
//#FF1565C0
//FF64B5F6
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Contador de Pessoas",
        home: Column(
          //alinhando o conteudo no centro
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Pessoas: 0",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: FlatButton(
                    child: Text(
                      "+1",
                      style: TextStyle(fontSize: 40.0, color: Colors.white),
                    ),
                    onPressed: () {},
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: FlatButton(
                    child: Text(
                      "-1",
                      style: TextStyle(fontSize: 40.0, color: Colors.white),
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            Text(
              "Pode Entrar!",
              style: TextStyle(
                  color: Colors.white,
                  fontStyle: FontStyle.italic,
                  fontSize: 30.0),
            ),
          ],
        ));
  }

  Widget meuLayoutWidget() {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Container(
                child: TextField(
                  decoration: InputDecoration(hintText: 'Infome o valor'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
