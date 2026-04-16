import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:app/tasks/layout_design_02.dart';

void main() {
  testWidgets('Layout Design 02 UI test', (WidgetTester tester) async {
    await tester.pumpWidget(const LayoutDesign02());

    expect(find.text('Secondary Numbers'), findsOneWidget);

    expect(find.text('+1 (555) 987-6543'), findsOneWidget);
    expect(find.text('Home • Added 2mo ago'), findsOneWidget);

    expect(find.text('+44 20 7123 4567'), findsOneWidget);
    expect(find.text('Work • Unverified'), findsOneWidget);

    expect(find.byIcon(Icons.phone), findsNWidgets(2));
    expect(find.byIcon(Icons.edit), findsNWidgets(2));
    expect(find.byIcon(Icons.delete), findsNWidgets(2));
  });
}