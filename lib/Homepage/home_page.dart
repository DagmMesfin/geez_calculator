import 'package:flutter/material.dart';

import './calculator_panel.dart';
import 'navigation_drawer_widget.dart';

class HomePage extends StatelessWidget {
  final head = 'ግእዝ ካልኩሌተር';
  final String eth = 'Ethiopic';
  final String nor = 'Normalic';
  final String tit = 'Titlic';

  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: NaviDrawer(),
      appBar: AppBar(
        title: Text(
          head,
          style: TextStyle(fontFamily: tit, fontSize: 30.0),
        ),
        backgroundColor: Colors.blue,
      ),
      body: CalculatorPanel(),
    );
  }
}
