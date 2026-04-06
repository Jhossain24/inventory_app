import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:inventory_app/main.dart';

void main() {
  testWidgets('App launches successfully', (WidgetTester tester) async {
    // Build our app and trigger a frame
    await tester
        .pumpWidget(const InventoryApp()); // Changed from MyApp to InventoryApp

    // Verify app bar exists
    expect(find.text('Inventory Manager'), findsOneWidget);
  });
}
