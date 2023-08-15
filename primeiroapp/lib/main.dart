import 'package:flutter/material.dart';
import 'Result.dart';
import 'Quiz.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _index = 0;
  var _valorTotal = 0;
  final _perguntasRespostas = [
    {
      "Pergunta": "Qual carro deseja comprar ?",
      "Resposta": [
      {"texto":"Porsche boxster s", "valor": 700000},
      {"texto":"audi tt RS", "valor": 315000},
      {"texto":"Land Hover Evoque", "valor": 250000},
      ],
    },
    {
      "Pergunta": "Qual a cor desejada ?",
      "Resposta": 
      [
      {"texto":"Vermelho", "valor": 100000},
      {"texto":"amarelo", "valor": 50000},

      {"texto":"azul", "valor": 25000},
      {"texto": "branco", "valor": 0}
      ],
    },
    {
      "Pergunta": "Qual a cor do interior do carro ?",
      "Resposta": 
      [
      {"texto":"preto", "valor": 0},
      {"texto":"caramelo", "valor": 1000},
      {"texto":"vermelho", "valor": 10000},
      ],
    },
  ];

  _escolher(int? valor) {
  if(temPergunta){
    setState(() {
      _index++;
      _valorTotal += valor ?? 0;
    });
  }
  print(_valorTotal);
  }
  _resetButton(){
    setState(() {
      _index = 0;
      _valorTotal = 0;
    });
  }
  bool get temPergunta {
    return _index<_perguntasRespostas.length; 
  }
  @override
  Widget build(BuildContext buildContext) {

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Perguntas"),
      ),
      body: temPergunta ? 
      Quiz(
            index: _index,
            perguntasRespostas: _perguntasRespostas,
            fn: _escolher,
          ) 
      : 
      Result(
              titulo: "o valor do carro é : R\$ $_valorTotal",
              textoBotao: "Reset",
              fn: _resetButton,
            )
      )
    );
  }
}
