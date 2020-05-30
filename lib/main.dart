import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Change State App",
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: ChangeColor(),
    );
  }
}

class ChangeColor extends StatefulWidget {
  @override
  _ChangeColorState createState() => _ChangeColorState();
}

class _ChangeColorState extends State<ChangeColor> {
  int num1, num2, sum = 0;
  final TextEditingController t1 = TextEditingController(text: '0');
  final TextEditingController t2 = TextEditingController(text: '0');

  void doAddition() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 + num2;
    });
  }

  void doMult() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 * num2;
    });
  }

  void doSub() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 - num2;
    });
  }

  void doDiv() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 ~/ num2;
    });
  }

void doClear() {
  setState(() {
  t1.text='0';
  t2.text='0';
    
  });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Change1'),
        ),
        body: Container(
            padding: const EdgeInsets.all(40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Output : $sum ',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.purple),
                ),
                TextField(
                    keyboardType: TextInputType.number,
                    controller: t1,
                    decoration: InputDecoration(
                      hintText: 'Enter Number 1',
                    )),
                TextField(
                    keyboardType: TextInputType.number,
                    controller: t2,
                    decoration: InputDecoration(
                      hintText: 'Enter Number 2',
                    )),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    MaterialButton(
                      child: Text('+'),
                      color: Colors.redAccent,
                      onPressed: doAddition,
                    ),
                    MaterialButton(
                      child: Text('-'),
                      color: Colors.redAccent,
                      onPressed: doSub,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    MaterialButton(
                      child: Text('*'),
                      color: Colors.redAccent,
                      onPressed: doMult,
                    ),
                    MaterialButton(
                      child: Text('/'),
                      color: Colors.redAccent,
                      onPressed: doDiv,
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MaterialButton(
                      child: Text('Clear'),
                      color: Colors.redAccent,
                      onPressed: doClear,
                                          ),
                                          
                                        ],
                                      ),
                                    ],
                                  )));
                        }
                      
                        
}
