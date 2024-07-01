import 'package:flutter/material.dart';
import 'package:geez_calculator/converting_fuctions.dart';

class CalculatorPanel extends StatefulWidget {
  const CalculatorPanel({Key? key}) : super(key: key);

  @override
  _CalculatorPanelState createState() => _CalculatorPanelState();
}

class _CalculatorPanelState extends State<CalculatorPanel> {
  TextEditingController t1 = TextEditingController(text: '');

  final String eth = 'Ethiopic';
  final String nor = 'Normalic';
  final String tit = 'Titlic';
  final String sym = 'symbolic';

  String equation = 'አልቦ';
  String result = 'አልቦ';
  double equationFontSize = 28.0;
  double resultFontSize = 38.0;

  buttonPressed(String text) {
    setState(() {
      if (text == 'C') {
        equation = 'አልቦ';
        result = 'አልቦ';
        equationFontSize = 28.0;
        resultFontSize = 38.0;
      } else if (text == '<=') {
        equationFontSize = 38.0;
        resultFontSize = 28.0;
        equation = equation.substring(0, equation.length - 1);
        if (equation == '' || equation == 'አል') {
          equation = 'አልቦ';
        }
      } else if (text == '=') {
        equationFontSize = 28.0;
        resultFontSize = 38.0;
        result = geezCalculator(equation);
      } else {
        equationFontSize = 38.0;
        resultFontSize = 28.0;
        if (equation == 'አልቦ') {
          equation = text;
        } else {
          equation += text;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.centerRight,
          padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
          child: Text(equation,
              style: TextStyle(
                  fontSize: equationFontSize,
                  fontFamily: eth,
                  color: Colors.black54)),
        ),
        const Expanded(
          child: Divider(),
        ),
        Container(
          alignment: Alignment.centerRight,
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 30),
          child: Text(result,
              style: TextStyle(
                  fontSize: resultFontSize,
                  fontFamily: eth,
                  color: Colors.black54)),
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.6 + 15,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.fromLTRB(1.0, 0.0, 1.0, 0.0),
          margin: EdgeInsets.all(0.0),
          child: Column(
            children: [
              Table(
                children: <TableRow>[
                  TableRow(children: [
                    customKeyboardButton('C', Colors.white, Colors.lime, nor),
                    customKeyboardButton('<=', Colors.white, Colors.red, sym),
                    customKeyboardButton('=', Colors.white, Colors.blue, nor),
                  ]),
                ],
              ),
              Table(
                children: [
                  TableRow(children: [
                    customKeyboardButton('፩', Colors.white, Colors.green, eth),
                    customKeyboardButton('፪', Colors.white, Colors.green, eth),
                    customKeyboardButton('፫', Colors.white, Colors.green, eth),
                    customKeyboardButton('፬', Colors.white, Colors.green, eth),
                    customKeyboardButton('፭', Colors.white, Colors.green, eth),
                    customKeyboardButton('+', Colors.white, Colors.blue, nor),
                  ]),
                  TableRow(children: [
                    customKeyboardButton('፮', Colors.white, Colors.green, eth),
                    customKeyboardButton('፯', Colors.white, Colors.green, eth),
                    customKeyboardButton('፰', Colors.white, Colors.green, eth),
                    customKeyboardButton('፱', Colors.white, Colors.green, eth),
                    customKeyboardButton('፻', Colors.white, Colors.indigo, eth),
                    customKeyboardButton('-', Colors.white, Colors.blue, nor),
                  ]),
                  TableRow(children: [
                    customKeyboardButton('፲', Colors.black, Colors.cyan, eth),
                    customKeyboardButton('፳', Colors.black, Colors.cyan, eth),
                    customKeyboardButton('፴', Colors.black, Colors.cyan, eth),
                    customKeyboardButton('፵', Colors.black, Colors.cyan, eth),
                    customKeyboardButton('፶', Colors.black, Colors.cyan, eth),
                    customKeyboardButton('×', Colors.white, Colors.blue, nor),
                  ]),
                  TableRow(children: [
                    customKeyboardButton('፷', Colors.black, Colors.cyan, eth),
                    customKeyboardButton('፸', Colors.black, Colors.cyan, eth),
                    customKeyboardButton('፹', Colors.black, Colors.cyan, eth),
                    customKeyboardButton('፺', Colors.black, Colors.cyan, eth),
                    customKeyboardButton('፼', Colors.white, Colors.indigo, eth),
                    customKeyboardButton('÷', Colors.white, Colors.blue, nor),
                  ]),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget customKeyboardButton(
      String text, Color textcolor, Color buttoncolor, String fontfamily) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.6 / 5,
      margin: EdgeInsets.fromLTRB(1.0, 0.0, 1.0, 3.0),
      color: buttoncolor,
      child: TextButton(
        child: Text(
          text,
          style:
              TextStyle(color: textcolor, fontSize: 30, fontFamily: fontfamily),
        ),
        onPressed: () => buttonPressed(text),
      ),
    );
  }
}

String geezCalculator(String equation) {
  int _counter = 0, _intermediary = 0, _r = 0;
  List<String> _oper = ['+', '-', '×', '÷'];
  String _result = '', num1 = '', num2 = '';
  String _operator = '';

  for (int _i = 0; _i < _oper.length; _i++) {
    if (equation.contains(_oper[_i])) {
      _counter++;
      _operator = _oper[_i];
    }
  }
  if (_counter >= 2) {
    _result = 'ከአንድ በላይ ስሌት መጠቀም አይቻልም!';
  } else if (_counter == 0) {
    _result = equation;
  } else {
    num1 = equation.substring(0, equation.indexOf(_operator));
    num2 = equation.substring(equation.indexOf(_operator) + 1);
    print(numConverterToArab(num1));
    print(numConverterToArab(num2));
    switch (_operator) {
      case '+':
        _intermediary = numConverterToArab(num1) + numConverterToArab(num2);
        _result = numConverterToGeez(_intermediary);
        break;
      case '-':
        _intermediary = numConverterToArab(num1) - numConverterToArab(num2);
        if (_intermediary < 0) {
          _intermediary = int.parse(_intermediary.toString().substring(1));
          _result = numConverterToGeez(_intermediary) + ' ታህተ አልቦ';
        } else if (_intermediary == 0) {
          _result = 'አልቦ';
        } else {
          _result = numConverterToGeez(_intermediary);
        }
        break;
      case '×':
        _intermediary = numConverterToArab(num1) * numConverterToArab(num2);
        _result = numConverterToGeez(_intermediary);
        break;
      case '÷':
        _intermediary = numConverterToArab(num1) ~/ numConverterToArab(num2);
        _r = numConverterToArab(num1) % numConverterToArab(num2);
        if (_r != 0) {
          _result = numConverterToGeez(_intermediary) +
              ' ቀሪ ' +
              numConverterToGeez(_r);
        } else {
          _result = numConverterToGeez(_intermediary);
        }

        break;
    }
  }

  return _result;
}
