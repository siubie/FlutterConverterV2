import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Input extends StatelessWidget {
  const Input({
    Key key,
    @required this.etInput,
  }) : super(key: key);

  final TextEditingController etInput;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(hintText: "Masukkan Suhu Dalam Celcius"),
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      controller: etInput,
      keyboardType: TextInputType.number,
    );
  }
}
