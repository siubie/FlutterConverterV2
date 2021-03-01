import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result({Key key, @required double result, @required String name})
      : _result = result,
        _name = name,
        super(key: key);

  final double _result;
  final String _name;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Text(_name),
          Container(
            margin: EdgeInsets.only(top: 20, bottom: 20),
            child: Expanded(
              child: Text(
                _result.toStringAsFixed(2),
                style: TextStyle(fontSize: 36),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
