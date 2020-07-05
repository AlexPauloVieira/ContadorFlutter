import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  final _estilo = TextStyle(
    fontSize: 25,
    color: Color(0xFFFFCC00),
  );

  int _contador = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Contador',
            style: TextStyle(
              color: Color(0xFFFFCC00),
              fontWeight: FontWeight.bold,
              fontSize: 25.0,
            ),
          ),
          backgroundColor: Colors.teal[500],
          centerTitle: true,
        ),
        backgroundColor: Colors.blueGrey[800],
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Número de clicks',
                style: _estilo,
              ),
              Text(
                '$_contador',
                style: _estilo,
              ),
            ],
          ),
        ),
        floatingActionButton: _criarBotoes());
  }

  Widget _criarBotoes() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(
          width: 30.0,
        ),
        FloatingActionButton(
          backgroundColor: Colors.yellow[700],
          onPressed: _reset,
          child: Icon(Icons.exposure_zero),
        ),
        Expanded(
          child: SizedBox(),
        ),
        FloatingActionButton(
          backgroundColor: Colors.red[700],
          onPressed: _subtrair,
          child: Icon(Icons.remove),
        ),
        SizedBox(
          width: 5.0,
        ),
        FloatingActionButton(
          backgroundColor: Colors.green[700],
          onPressed: _somar,
          child: Icon(Icons.add),
        ),
      ],
    );
  }

  void _somar() {
    setState(() {
      _contador++;
    });
  }

  void _subtrair() {
    setState(() {
      _contador--;
    });
  }

  void _reset() {
    setState(() {
      _contador = 0;
    });
  }
}
