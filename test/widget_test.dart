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

  testWidgets('A greeting is displayed', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    final Finder textfield = find.widgetWithText(TextFormField, 'Your Name');

    await tester.tap(textfield);
    await tester.enterText(textfield, 'Aysha');
    await tester.pump();

    final Finder greetingText = find.text('Hello, Aysha!');
    expect(greetingText, findsOneWidget);
  });

  testWidgets('greeting text is always visible', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());

    const double PORTRAIT_WIDTH = 400.0;
    const double PORTRAIT_HEIGHT = 800.0;
    const double PORTRAIT_HEIGHT_WITH_KEYBOARD = PORTRAIT_HEIGHT/2;

    final TestWidgetsFlutterBinding binding = TestWidgetsFlutterBinding.ensureInitialized();

    await binding.setSurfaceSize(Size(PORTRAIT_WIDTH, PORTRAIT_HEIGHT_WITH_KEYBOARD));
    await tester.pumpAndSettle();

    final Finder textfield = find.widgetWithText(TextFormField, 'Your Name');

    await tester.tap(textfield);
    await tester.enterText(textfield, 'Aysha');
    await tester.pump();

    final Finder greetingText = find.text('Hello, Aysha!');
    expect(greetingText, findsOneWidget);
  });

}
