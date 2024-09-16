import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Flood());
}

class Flood extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginSystem(),
    );
  }
}

class LoginSystem extends StatefulWidget {
  @override
  _LoginSystemState createState() => _LoginSystemState();
}

class _LoginSystemState extends State<LoginSystem> {
  int _imageIndex = 0;
  final List<String> _imagePaths = [
    'images/rmuti.jpg',
    'images/meme.jpg',
    'images/mes.jpg', // เพิ่มรูป
  ];
  final List<String> _messages = [
    "Hello World",
    "ธรรมนะมีอยู่จริง",
    "flutter is so....", // เพิ่มข้อความ
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Basic Layout App'),
        backgroundColor: Colors.blue,
        titleTextStyle: TextStyle(fontSize: 30, color: Colors.white),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                _imagePaths[_imageIndex], // Image path variable

                width: 250.0,
                height: 250.0,
              ),
              SizedBox(height: 20),
              Text(_messages[_imageIndex]),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  setState(() {
    _imageIndex = (_imageIndex + 1) % _imagePaths.length; // เปลี่ยนรูปตามลำดับ
     });
                },
                child: Text('Show New Image'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _imageIndex = (_imageIndex - 2) % _imagePaths.length;
                  });
                },
                child: Text('Show Original Image'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
