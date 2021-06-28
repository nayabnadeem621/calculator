import 'dart:html';

import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';


class Calculator extends StatefulWidget {

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  var result ="";

Widget btn(var textt){ 
return ElevatedButton(onPressed: (){
  setState(() {
      result= result + textt;
    });
}, child: Text("textt"));
}
clear(){
  setState(() {
      result="";
    });
  output(){
    Parser p = Parser();
    Expression exp = p.parse(result);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);
    
    setState(() {
          result = eval.toString();
        });
  }
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text ("0", style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold,
            ),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
              btn("1"),
              btn("2"),
              btn("3"),
              btn("4"),
            ],
            ),
            Row( 
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
              btn("5"),
              btn("6"),
              btn("7"),
              btn("8"),
            ],
            ),
            Row( 
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
              btn("9"),
              btn("0"),
              btn("+"),
              btn("-"),
            ],
            ),
            Row( 
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
              btn("*"),
              btn("/"),
              ElevatedButton(onPressed: clear, child: Text("clear")),
              ElevatedButton(onPressed: output, child: Text("=")),
            ],
            ),
          ],
        ),
      ),
    );
  }
}

class REAL {
}

class REAL {
}

class EvaluationType {
}

class ContextModel {
}

class Expression {
  double evaluate(real, ContextModel cm) {}
}

class Parser {
  Expression parse(String result) {}
}

