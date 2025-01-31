import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:uts_pemob/main.dart';

void main() {
  testWidgets('Navigation smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Verify that the Dashboard screen is shown initially.
    expect(find.text('Dashboard'), findsOneWidget);
    expect(find.text('Courses'), findsNothing);

    // Navigate to Courses screen.
    await tester.tap(find.byIcon(Icons.school));
    await tester.pumpAndSettle();

    // Verify that we are on the Courses screen.
    expect(find.text('Dashboard'), findsNothing);
    expect(find.text('Courses'), findsOneWidget);
  });
}
