import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:florasync_mobile/screens/login_screen.dart'; // Replace with your actual app import

void main() {
  testWidgets('Login Page Test', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: LoginScreen()));

    // Enter text
    await tester.enterText(find.byType(TextField).at(0), 'test@example.com');
    await tester.enterText(find.byType(TextField).at(1), 'password123');

    // Tap the login button
    await tester.tap(find.byType(ElevatedButton).at(0));
    await tester.pump();

    // Verify results
    expect(find.text('Logging in...'), findsOneWidget);
    // Add additional expectations as needed
  });
}
