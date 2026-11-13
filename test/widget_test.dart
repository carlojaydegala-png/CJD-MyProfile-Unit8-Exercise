import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:degala_unit8_exercise/main.dart';

void main() {
  testWidgets('The app opens CJD Profile', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(
      find.descendant(
        of: find.byType(AppBar),
        matching: find.text('Carlo Jay Degala'),
      ),
      findsOneWidget,
    );
    expect(find.text('Profile'), findsOneWidget);
  });
}
