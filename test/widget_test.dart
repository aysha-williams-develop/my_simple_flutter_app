import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:my_simple_flutter_app/main.dart';

void main() {
  testWidgets('Display What\'s your name', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    expect(find.text('What\'s your name?'), findsOneWidget);
  });

  testWidgets('The App bar displays the app name', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    expect(find.text('Greetings From Outer Space'), findsOneWidget);
  });

  testWidgets('A text field is available with placeholder text', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    expect(find.widgetWithText(TextFormField, 'Your Name'), findsOneWidget);
  });
}
