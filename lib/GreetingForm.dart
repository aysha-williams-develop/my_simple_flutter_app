import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class GreetingForm extends StatefulWidget {
  @override
  _GreetingFormState createState() => _GreetingFormState();
}

class _GreetingFormState extends State<GreetingForm> {
  final textEditingController = TextEditingController();
  var _greetingText = '';

  @override
  void initState() {
    super.initState();
    textEditingController.addListener(_captureText);
  }

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  void _captureText() {
    setState(() {
      _greetingText = "Hello, ${textEditingController.text}!";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            decoration: const InputDecoration(
                labelText: 'What\'s your name?',
                hintText: 'Your Name'
            ),
            controller: textEditingController,
          ),
          Text(_greetingText)
        ]);
  }
}