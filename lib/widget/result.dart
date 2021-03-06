import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result({Key key, @required double result})
      : _result = result,
        super(key: key);

  final double _result;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Text("Hasil Konversi"),
          Container(
            margin: EdgeInsets.only(top: 20, bottom: 20),
            child: Text(
              _result.toStringAsFixed(2),
              style: TextStyle(fontSize: 36),
            ),
          ),
        ],
      ),
    );
  }
}
