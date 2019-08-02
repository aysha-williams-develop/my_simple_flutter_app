import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
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
