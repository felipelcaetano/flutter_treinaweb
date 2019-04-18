import 'package:flutter/material.dart';

class TreinaWebFlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TreinaWeb - Flutter',
      theme: new ThemeData(primarySwatch: Colors.lightGreen),
      home: new HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {

  double _numero1 = 0.0;
  double _numero2 = 0.0;
  double _resultadoAdicao = 0.0;
  double _resultadoSubtracao = 0.0;

  void _setNumero1(String valor) {
    setState(() {
      try {
        _numero1 = double.parse(valor);
        _resultadoAdicao = _numero1 + _numero2;
        _resultadoSubtracao = _numero1 - _numero2;
      } catch (ex) {
        // TODO notificar usuário
      }
    });
  }

  void _setNumero2(String valor) {
    setState(() {
      try {
        _numero2 = double.parse(valor);
        _resultadoAdicao = _numero1 + _numero2;
        _resultadoSubtracao = _numero1 - _numero2;
      } catch (ex) {
        // TODO notificar usuário
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('TreinaWeb - Flutter'),
      ),
      body: new Container(
        padding: EdgeInsets.all(16.0),
        child: new Column(
          children: <Widget>[
            new TextField(
              decoration: new InputDecoration(labelText: 'Primeiro número'),
              keyboardType: TextInputType.number,
              onChanged: (valor) {
                _setNumero1(valor);
              },
            ),
            new TextField(
              decoration: new InputDecoration(labelText: 'Segundo número'),
              keyboardType: TextInputType.number,
              onChanged: (valor) {
                _setNumero2(valor);
              },
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Text(
                    'Adição: $_resultadoAdicao \n Subtração: $_resultadoSubtracao',

                    style: new TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

void main() => runApp(new TreinaWebFlutterApp());
