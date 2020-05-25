import 'package:flutter/material.dart';

void main() => runApp(ChangeColor());

class ChangeColor extends StatefulWidget {
  @override
  _ChangeColorState createState() => _ChangeColorState();
}

class _ChangeColorState extends State<ChangeColor> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Change state',
        home: Scaffold(
            appBar: AppBar(
          title: Text('Change'),
        )));
  }
}
