import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _number = 0;

  void _add() {
    setState(() {
      _number += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Container(
          child: Text(
            _number.toString(),
            style: TextStyle(fontSize: 40),
          ),
          alignment: Alignment.center,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            _add();
          },
          backgroundColor: Colors.green,
          child: const Icon(Icons.navigation),
        ),
      ),
    );
  }
}
