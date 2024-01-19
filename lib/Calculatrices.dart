
import 'package:flutter/material.dart';

class Calc extends StatefulWidget {
  @override
  _CalcState createState() => _CalcState();
}

class _CalcState extends State<Calc> {
  double number1 = 0.0;
  double number2 = 0.0;
  String selectedOperation = 'Addition';
  double result = 0.0;

  void performOperation() {
    setState(() {
      switch (selectedOperation) {
        case 'Addition':
          result = number1 + number2;
          break;
        case 'Subtraction':
          result = number1 - number2;
          break;
        case 'Multiplication':
          result = number1 * number2;
          break;
        case 'Division':
          result = number1 / number2;
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Operations'),
        ),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  setState(() {
                    number1 = double.parse(value);
                  });
                },
                decoration: InputDecoration(labelText: 'Entrer le premier nombre'),
              ),
              TextField(
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  setState(() {
                    number2 = double.parse(value);
                  });
                },
                decoration: InputDecoration(labelText: 'Enterer le  deuxieme nombre'),
              ),
              SizedBox(height: 20),
              DropdownButton<String>(
                value: selectedOperation,
                onChanged: (String? newValue) {
                  setState(() {
                    selectedOperation = newValue!;
                  });
                },
                items: <String>['Addition', 'Subtraction', 'Multiplication', 'Division']
                    .map<DropdownMenuItem<String>>(
                      (String value) => DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      ),
                    )
                    .toList(),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  performOperation();
                },
                child: Text('Calculer'),
              ),
              SizedBox(height: 20),
              Text('Reponse: $result'),
            ],
          ),
        ),
      ),
    );
  }
}

