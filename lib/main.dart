import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Simple Calculator',
      home: CalculatorScreen(),
      theme: ThemeData(backgroundColor: Colors.deepPurpleAccent),
    ),
  );
}

class CalculatorScreen extends StatefulWidget {
  @override
  _CalculatorScreenState createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  Widget buttonBuilder(
    double buttonHeight,
    Color buttonColor,
    String buttonText,
  ) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.1 * buttonHeight,
      color: buttonColor,
      child: FlatButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0.0),
            side: BorderSide(
                color: Colors.white, width: 1, style: BorderStyle.solid)),
        onPressed: null,
        child: Text(
          buttonText,
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.normal,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("CALCULATOR")),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              alignment: Alignment.centerRight,
              padding: EdgeInsets.fromLTRB(10, 20, 20, 0),
              child: Text(
                '0',
                style: TextStyle(fontSize: 40),
              ),
            ),
            Container(
              alignment: Alignment.centerRight,
              padding: EdgeInsets.fromLTRB(10, 20, 20, 0),
              child: Text(
                '0',
                style: TextStyle(fontSize: 40),
              ),
            ),
            Expanded(child: Divider()),
            Row(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width * .75,
                  child: Table(
                    children: [
                      TableRow(
                        children: [
                          buttonBuilder(1, Colors.blueAccent, 'mc'),
                          buttonBuilder(1, Colors.blueAccent, 'm+'),
                          buttonBuilder(1, Colors.blueAccent, 'm-'),
                        ],
                      ),
                      TableRow(
                        children: [
                          buttonBuilder(1, Colors.redAccent, 'C'),
                          buttonBuilder(1, Colors.black54, '÷'),
                          buttonBuilder(1, Colors.black54, '×'),
                        ],
                      ),
                      TableRow(
                        children: [
                          buttonBuilder(1, Colors.black54, '7'),
                          buttonBuilder(1, Colors.black54, '8'),
                          buttonBuilder(1, Colors.black54, '9'),
                        ],
                      ),
                      TableRow(
                        children: [
                          buttonBuilder(1, Colors.black54, '4'),
                          buttonBuilder(1, Colors.black54, '5'),
                          buttonBuilder(1, Colors.black54, '6'),
                        ],
                      ),
                      TableRow(
                        children: [
                          buttonBuilder(1, Colors.black54, '1'),
                          buttonBuilder(1, Colors.black54, '2'),
                          buttonBuilder(1, Colors.black54, '3'),
                        ],
                      ),
                      TableRow(
                        children: [
                          buttonBuilder(1, Colors.black54, '%'),
                          buttonBuilder(1, Colors.black54, '0'),
                          buttonBuilder(1, Colors.black54, '.'),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.25,
                  child: Table(
                    children: [
                      TableRow(
                        children: [
                          buttonBuilder(1, Colors.blueAccent, 'mr'),
                        ],
                      ),
                      TableRow(
                        children: [
                          buttonBuilder(1, Colors.amberAccent, '⌫'),
                        ],
                      ),
                      TableRow(
                        children: [
                          buttonBuilder(1, Colors.black54, '⁻'),
                        ],
                      ),
                      TableRow(
                        children: [
                          buttonBuilder(1, Colors.black54, '+'),
                        ],
                      ),
                      TableRow(
                        children: [
                          buttonBuilder(2, Colors.blueAccent, '='),
                        ],
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
