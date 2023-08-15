import 'package:flutter/material.dart';
import 'Question.dart';
import 'Answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> _perguntasRespostas;
  final int _index;
  final void Function(int) _fn;
  
  Quiz({
  required void Function(int) fn,
  required int index,
  required List<Map<String, Object>> perguntasRespostas
  })
  : 
    this._fn = fn,
    this._index = index,
    this._perguntasRespostas = perguntasRespostas
  ;
  bool get temPergunta {
    return _index<_perguntasRespostas.length; 
  }
  @override
  Widget build(BuildContext context) {
  List<Map<String, Object>>? answers = temPergunta ? _perguntasRespostas[_index]["Resposta"] as List<Map<String, Object>>? : [];
    return Column(
        children: [
          Question(text:_perguntasRespostas[_index]["Pergunta"].toString()),
          ...answers!.map((resp) => Answer(text:resp["texto"] as String,fn: () => _fn(int.parse(resp["valor"].toString()))),).toList(),
        ],
        );
  }
}