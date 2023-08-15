import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final String _titulo;
  final String _textoBotao;
  final void Function() _fn;

  Result({
  required String titulo,
  required void Function() fn,
  required String textoBotao
  })
  :
    this._fn = fn,
    this._textoBotao = textoBotao,
    this._titulo = titulo
  ;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
          Text(
              _titulo.toString(), 
              style: TextStyle(fontSize: 28),
              ),
          Container(
            width : double.infinity, 
            child: ElevatedButton(onPressed: _fn,
                                  child: Text(_textoBotao.toString()),
                                  ),
          ),
        ],);
  }
}