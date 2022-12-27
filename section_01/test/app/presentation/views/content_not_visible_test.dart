import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_unit_and_widget_testing/app/my_app.dart';
import 'package:flutter_unit_and_widget_testing/app/presentation/routes/routes.dart';

void main() {
  testWidgets(
    'ContentNotVisible',
    (tester) async {
      await tester.pumpWidget(
        const MyApp(
          initialRoute: Routes.CONTENT_NOT_VISIBLE,
        ),
      );
      final textFinder = find.text('show message');

      await tester.dragFrom(
        const Offset(100, 100),
        const Offset(100, -10000),
      );
      await tester.pumpAndSettle();

      expect(
        textFinder,
        findsOneWidget,
      );

      // await tester.ensureVisible(textFinder);

      await tester.tap(
        textFinder,
      );

      await tester.pump();

      expect(
        find.byType(AlertDialog),
        findsOneWidget,
      );
    },
  );
}
