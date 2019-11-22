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
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 10.0),
            child: Text(
              'What\'s your name?',
              style: DefaultTextStyle.of(context).style.apply(fontSizeFactor: 1.5)),
          ),
          TextFormField(
            key: Key('textField'),
            decoration: const InputDecoration(
                hintText: 'Your Name',
                border: const OutlineInputBorder()
            ),
            controller: textEditingController,
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.fromLTRB(0, 90.0, 0, 0),
              child: Text(
                _greetingText,
                key: Key('greetingText')
              )
            )
          )
        ]);
  }
}