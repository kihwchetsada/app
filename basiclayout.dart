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
  String imagePath = 'images/rmuti.jpg'; // Default image path
  String message = "Hello World";

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
                imagePath, // Image path variable
                width: 250.0,
                height: 250.0,
              ),
              SizedBox(height: 20),
              Text(message),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    imagePath = 'images/meme.jpg'; // Change to new image
                    message = "ธรรมนะมีอยู่จริง";
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
                    imagePath = 'images/rmuti.jpg'; // Reset to original image
                    message = "Original Image";
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
