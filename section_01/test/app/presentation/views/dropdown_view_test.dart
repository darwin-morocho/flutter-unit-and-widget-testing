import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_unit_and_widget_testing/app/my_app.dart';
import 'package:flutter_unit_and_widget_testing/app/presentation/routes/routes.dart';

void main() {
  testWidgets(
    'DropdownView',
    (tester) async {
      await tester.pumpWidget(
        const MyApp(
          initialRoute: Routes.DROPDOWN,
        ),
      );

      expect(
        find.text('select one option'),
        findsOneWidget,
      );

      await tester.tap(
        find.byType(DropdownButton<String>),
      );
      await tester.pumpAndSettle();
      expect(
        find.text('yes'),
        findsWidgets,
      );
      expect(
        find.text('no'),
        findsWidgets,
      );
      await tester.tap(
        find.text('yes').last,
      );
      await tester.pumpAndSettle();

      expect(
        find.text('select one option'),
        findsOneWidget,
      );
      expect(
        find.text('yes'),
        findsOneWidget,
      );
    },
  );
}
