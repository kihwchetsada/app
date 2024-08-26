import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

void main() {
  runApp(Flood());
}

class Flood extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      home: Login_system(),
    );
  }
}

class Login_system extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LOGIN'),
        backgroundColor: Colors.blue,
        titleTextStyle: TextStyle(fontSize: 30, color: Colors.white),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'images/R.png',
            width: 250.0,
            height: 250.0,
          ),
          SizedBox(height: 10,),
          TextField(
            decoration: InputDecoration(
              labelText: 'Username', // ป้ายชื่อที่แสดงอยู่ด้านบน
              hintText: 'Enter your username', // ข้อความแนะนำที่จะแสดงในช่องกรอก
              border: OutlineInputBorder(), // เส้นขอบรอบๆ ช่องกรอก
              prefixIcon: Icon(Icons.person), // ไอคอนที่แสดงอยู่ด้านซ้ายของช่องกรอก
            ),
          ),
          SizedBox(height: 5,),
          TextField(
            decoration: InputDecoration(
              labelText: 'Password',
              hintText: 'Enter your password',
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.lock),
            ),
            obscureText: true,
          ),
          SizedBox(height: 45,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: (){},
                  child: Text('LOGIN'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, // สีพื้นหลัง
                  foregroundColor: Colors.white, // สีข้อความ
                ),
              ),
              SizedBox(width: 70,),
              ElevatedButton(
                  onPressed: (){},
                  child: Text('REGISTER'),
               style: ElevatedButton.styleFrom(
               backgroundColor: Colors.blue, // สีพื้นหลัง
               foregroundColor: Colors.white, // สีข้อความ
    ),
              ),
              SizedBox(height: 150,),
            ],
          ),
          Text(' © copyright by CHETSADAPHON')
        ],
      ),
    );
  }
}
