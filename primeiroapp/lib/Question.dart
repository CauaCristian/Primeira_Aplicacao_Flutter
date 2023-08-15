import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String _text;
  Question({required String text})
    : this._text = text
  ;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(10),
      child: Text(
        _text,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 28,
        ),
      ),
    );
  }
}
