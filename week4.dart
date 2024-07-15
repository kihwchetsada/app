import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main () {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My first App',
      home:DefaultTabController(
          length: 1,
          child:  chetsadaphon() ),
    ); //first wiget
  }
}
class chetsadaphon extends  StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      appBar: AppBar(
          title:Text('Home page'),
        backgroundColor: Colors.red, //AppBarColor
          leading: IconButton(
              onPressed: (){},
            icon: Icon(Icons.menu),
          ),
      bottom: TabBar(
        tabs: [
        Tab(icon: Icon(Icons.home)),
        Tab(icon: Icon(Icons.access_alarm)),
        Tab(icon: Icon(Icons.accessibility)),
         ],
       ),
      ),
      body: Center(
        child: const Image(
          image:NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
        ),
      ),
    );
  }
}
