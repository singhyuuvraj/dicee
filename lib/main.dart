import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.blue,
        ),
        body: DicePage(),
      ),
    ),
  );
}
class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftdiceno=1;
  int rightdiceno=1;
  void change(){
    setState((){
      rightdiceno=Random().nextInt(6)+1;
      leftdiceno=Random().nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed:(){
               change();
              },
              child: Image.asset('images/dice$leftdiceno.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed:(){
                change();
              },
              child: Image.asset('images/dice$rightdiceno.png'),
            ),
          )
        ],
      ),
    );
  }
}

