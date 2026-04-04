import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:app/main.dart';

void main() {
  testWidgets('Student info UI test', (WidgetTester tester) async {
    // Build our app
    await tester.pumpWidget(const BUCSE9());

    // Check AppBar title
    expect(find.text('4th April 2026'), findsOneWidget);

    // Check Roll
    expect(find.text('22CSE009'), findsOneWidget);

    // Check Blood Group
    expect(find.text('B+'), findsOneWidget);

    // Check District
    expect(find.text('Barishal'), findsOneWidget);

    // Check Registration
    expect(find.text('2110-009-22'), findsOneWidget);

    // Check Nickname
    expect(find.text('Sourav'), findsOneWidget);

    // Check Full Name
    expect(find.text('Sourav Debnath'), findsOneWidget);

    // Check back icon exists
    expect(find.byIcon(Icons.arrow_back), findsOneWidget);
  });
}