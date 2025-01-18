import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'package:outlook/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('App smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame
    app.main();
    await tester.pumpAndSettle();

    // Verify initial screen
    expect(find.text('New message'), findsOneWidget);
    expect(find.text('Inbox'), findsOneWidget);
  });
}
