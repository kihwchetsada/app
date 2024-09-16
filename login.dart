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
      home: LoginSystem(),
    );
  }
}
class LoginSystem extends StatefulWidget {
  @override
  _LoginSystemState createState() => _LoginSystemState();
}

class _LoginSystemState extends State<LoginSystem> {
  String message = "Hello World";
  String message2 = '';
  bool showNewImg = false;
  bool showNewButton = false; // set invisible
  TextEditingController userName = TextEditingController();
  TextEditingController passWord = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LOGIN'),
        backgroundColor: Colors.blue,
        titleTextStyle: TextStyle(fontSize: 30, color: Colors.white),
      ),
      body: SingleChildScrollView(
       child:  Column(
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
              labelText: 'Username',
              hintText: 'Enter your username',
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.person),
            ),
            controller: userName,
          ),
          SizedBox(height: 5,),
          TextField(
            decoration: InputDecoration(
              labelText: 'Password',
              hintText: 'Enter your password',
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.lock),
            ),
            controller: passWord,
            obscureText: true,
          ),
          SizedBox(height: 45,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: (){
                  print('hello');
                  String temp1_user = userName.text;
                  print(temp1_user);
                  setState(() {
                      message = "Hi";
                      showNewButton = true; // Show the new button
                      message2 = temp1_user;
                      showNewImg = true;
                  });
                },
                child: Text('LOGIN'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                ),
              ),
              SizedBox(width: 70,),
              ElevatedButton(
                onPressed: (){
                  print("HELLO");
                  setState(() {
                    message = "Flutter is easy";
                    showNewButton = false; // Show the new button
                    showNewImg = false;
                  });
                },
                child: Text('REGISTER'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                ),
              ),
            ],
          ),
          SizedBox(height: 150,),
          Text(' © copyright by CHETSADAPHON'),
          (message != null) ? Text(message!) : Container(),
          if(showNewButton)
            ElevatedButton(
              onPressed: () {
                print("New button press");
              },
              child: Text('OK'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green, // หรือใช้สีอื่นที่คุณต้องการ
                foregroundColor: Colors.white,
              ),
            ),
          (message2 != null) ? Text(message2!) : Container(),

          if(showNewImg)
            ElevatedButton(onPressed: (){},
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(0), // เอา padding ออกเพื่อให้ภาพไม่ถูกบีบ
              ),
              child: Image.asset(
              'images/w.jpg',
              width: 250.0,
              height: 250.0,
                fit: BoxFit.cover,
            ),
            ),
          ],
        ),
      ),
    );
  }
}
