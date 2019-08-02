import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: Colors.lightBlue[800],
          accentColor: Colors.cyan[600]
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Simple Flutter App'),
        ),
        body: Center(
          child: Text('Hello World'),
        ),
        bottomNavigationBar: BottomAppBar(
          child: Container(height: 50.0,),
        ),
      ),
    );
  }
}
