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
          title: Text('Greetings From Outer Space'),
        ),
        body: Center(
          child: TextFormField(
            decoration: const InputDecoration(
              hintText: 'What\'s your name?',
            )
          )
        ),
        bottomNavigationBar: BottomAppBar(
          child: Container(height: 50.0,),
        ),
      ),
    );
  }
}
