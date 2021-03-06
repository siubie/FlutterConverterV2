import 'package:converter/widget/convert.dart';
import 'package:flutter/material.dart';
import 'package:converter/widget/input.dart';
import 'package:converter/widget/result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // text controller
  TextEditingController etInput = new TextEditingController();
  //variabel berubah
  double _inputUser = 0;
  double _kelvin = 0;
  double _reamur = 0;
  double _fahrenheit = 0;

  _konversiSuhu() {
    setState(() {
      _inputUser = double.parse(etInput.text);
      _reamur = 4 / 5 * _inputUser;
      _fahrenheit = 9 / 5 * _inputUser + 32;
      _kelvin = _inputUser + 273;
    });
  }

  //0 fixing error di layout
  //buang expanded di result widget
  //1 buat variabel dropdown
  var listSatuanSuhu = ["kelvin", "reamur"];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text("Konverter Suhu"),
          ),
          body: Container(
            margin: EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                Input(etInput: etInput),
                //3 buat dropdown biasa
                DropdownButton(
                  items: listSatuanSuhu.map((String value) {
                    return DropdownMenuItem(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  value: "kelvin",
                  onChanged: (value) {},
                  isExpanded: true,
                ),
                Container(
                  margin: EdgeInsets.only(top: 20, bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Result(
                        result: _kelvin,
                        name: "Kelvin",
                      ),
                      Result(
                        result: _reamur,
                        name: "Reamur",
                      ),
                      Result(
                        result: _fahrenheit,
                        name: "Fahrenheit",
                      ),
                    ],
                  ),
                ),
                Convert(konvertHandler: _konversiSuhu),
              ],
            ),
          ),
        ));
  }
}
