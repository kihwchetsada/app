import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Secondscreen extends StatelessWidget {
  final String temp1;

  Secondscreen({required this.temp1});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' Second Screen '),
        backgroundColor: Colors.blue, // สีพื้นหลัง
        titleTextStyle: TextStyle(
            fontSize: 30, color: Colors.white), // ขนาดฟอนต์ + สีข้อความ
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Go back to first screen'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red, // สีพื้นหลัง
                foregroundColor: Colors.white, // สีข้อความ
              ),
            ),
          ),
          SizedBox(height: 20),
          Text(temp1,style: TextStyle(
            color: Colors.red,
            fontSize: 50,
            fontStyle: FontStyle.italic
    ),
          ),
        ],
      ),
      );
  }
}
