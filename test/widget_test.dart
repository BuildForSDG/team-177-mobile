import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kenright/ui/screens/service_details.dart';
import 'package:kenright/ui/screens/welcome.dart';

void main() {
  Widget createWidgetForTesting({Widget child}) {
    return MaterialApp(
      home: child,
    );
  }

  testWidgets('My Welcome page has correct title', (WidgetTester tester) async {
    await tester.pumpWidget(
        createWidgetForTesting(child: WelcomeScreen(title: 'Kenright')));
    final titleFinder = find.text('Kenright');
    expect(titleFinder, findsOneWidget);
  });
}
