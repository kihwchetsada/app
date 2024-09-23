import 'package:basic2/page/SecondScreen.dart';
import 'package:basic2/page/ThirdScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Firstscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
        backgroundColor: Colors.blue,
        titleTextStyle: TextStyle(
          fontSize: 30,
          color: Colors.white,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // จัดกึ่งกลางแนวตั้ง
          crossAxisAlignment: CrossAxisAlignment.center, // จัดกึ่งกลางแนวนอน
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Secondscreen(temp1: 'Hello from First Screen!'),
                  ),
                );
              },
              child: Text('Go to SecondScreen !!!'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
              ),
            ),
            SizedBox(height: 20), // เว้นระยะห่างระหว่างปุ่ม
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Thirdscreen(temp2: 'Hello from Chetsadaphon'),
                  ),
                );
              },
              child: Text('Go to ThirdScreen !!!'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple,
                foregroundColor: Colors.white,
              ),

            ),
            SizedBox(height: 150,),
            Text(' © copyright by CHETSADAPHON')
          ],
        ),
      ),
    );
  }
}
