import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Myhomepage());
  }
}

class Myhomepage extends StatelessWidget {
  final List<String> itemes = ['Apple', 'Banana', 'Orange', 'Pineapple'];
  final List<String> itemes2 = ['Anutsara', 'Pornthip', 'Amonrat', 'Sakchai'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First List'),
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ...itemes.map((element) {
            if (element == 'Banana')
              return Container();
            else
              return Text(element);
          }).toList(),
          ElevatedButton(
            onPressed: () {
              print('Button Press');
              Navigator.push(context,
                MaterialPageRoute(
                  builder: (context) => Newscreen(itemes: itemes,),
                ),
              );
            },
            child: Text('Page 2'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              foregroundColor: Colors.white,
            ),
          ),
          ...itemes2.map((element) {
              return Text(element);
          }),
          ElevatedButton(
            onPressed: () {
              print('Button Press');
              Navigator.push(context,
                MaterialPageRoute(
                  builder: (context) => Screen(itemes2: itemes2,),
                ),
              );
            },
            child: Text('Page 3'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              foregroundColor: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
class Newscreen extends StatelessWidget {
  final List<String> itemes;
  Newscreen({required this.itemes});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen'),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ...itemes.map((element) {
            if (element == 'Banana')
               return Container();
             else
              return Text(element);
          }).toList(),
          Text('Go to first screen'),
           ElevatedButton(
            onPressed:() {
            Navigator.pop(context);
            },
             child: Text('Go Back'),
             style: ElevatedButton.styleFrom(
               backgroundColor: Colors.redAccent,
               foregroundColor: Colors.white,
             ),
           ),
        ],
      ),
    );
  }
}
class Screen extends StatelessWidget {
  final List<String> itemes2;
  Screen({required this.itemes2});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Newscreen'),
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ...itemes2.map((element) {
              return Text(element);
          }).toList(),
          Text('Go to first screen'),
          ElevatedButton(
            onPressed:() {
              Navigator.pop(context);
            },
            child: Text('Go Back'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.redAccent,
              foregroundColor: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
