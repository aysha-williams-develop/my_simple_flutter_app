import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:my_simple_flutter_app/main.dart';

void main() {
  testWidgets('Display Hello World', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Look for "Hello World" text
    expect(find.text('Hello World'), findsOneWidget);
  });

  testWidgets('The App bar displays the app name', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    expect(find.text('Greetings From Outer Space'), findsOneWidget);
  });

  testWidgets('A text box is available', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    expect(tester.tap(find.byType(TextFormField)), findsOneWidget);
  });
}
