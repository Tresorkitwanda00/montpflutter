import 'package:flutter/material.dart';

class Calculatrice extends StatefulWidget {
  @override
  _CalculatriceState createState() => _CalculatriceState();
}

class _CalculatriceState extends State<Calculatrice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
    title: Text("Calculatrice"),
    backgroundColor: Colors.blue,
    ),
    body: ListView(
      children: [
        Container(child: TextField(
        controller: null , 
        decoration: InputDecoration(hintText: "nombre1",labelText: "Saisissez le premier nombre"),
        ),
        ),
        SizedBox(height: 15,
        ),
        Container(child: TextField(
        controller: null , 
        decoration: InputDecoration(hintText: "nombre2",labelText: "Saisissez le deuxieme nombre"),
        ),
        ),
        SizedBox(height: 15,
        ),
        ],
        ),
    );
  }
}

