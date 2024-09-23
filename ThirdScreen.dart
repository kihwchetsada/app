import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Thirdscreen extends StatelessWidget {
  final String temp2;

  Thirdscreen({required this.temp2});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' Third Screen '),
        backgroundColor: Colors.blue, // สีพื้นหลัง
        titleTextStyle: TextStyle(
            fontSize: 30, color: Colors.white), // ขนาดฟอนต์ + สีข้อความ
      ),  body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Go back to first screen'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.purple, // สีพื้นหลัง
              foregroundColor: Colors.white, // สีข้อความ
            ),
          ),
        ),
        SizedBox(height: 20),
        Text(temp2,style: TextStyle(
            color: Colors.purple,
            fontSize: 50,
            fontStyle: FontStyle.italic
        ),
        ),
      ],
    ),
    );
  }
}
