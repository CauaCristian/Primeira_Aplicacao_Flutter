import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String _text;
  final void Function() _fn;
  Answer({
  required String text,
  required void Function() fn
  })
  :
  this._fn = fn,
  this._text = text
  ;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(1),
      child: ElevatedButton(
        child: Text(_text),
        onPressed: _fn,
      ),
    );
  }
}
