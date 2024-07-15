import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(xxx());
}

class xxx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'I love Flutter',
      home: myApp(),
    );
  }
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.red[100],
        appBar: AppBar(
          title: Text('Welcome to thailand'),
          backgroundColor: Colors.green, //AppBarColor
        ),
        body: Center(child: Text('I love AI'),),
    );
  }
}
