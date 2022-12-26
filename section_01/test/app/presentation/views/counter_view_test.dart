import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_unit_and_widget_testing/app/my_app.dart';
import 'package:flutter_unit_and_widget_testing/app/presentation/routes/routes.dart';

void main() {
  testWidgets(
    'CounterView',
    (tester) async {
      await tester.pumpWidget(
        const MyApp(
          initialRoute: Routes.COUNTER,
        ),
      );

      expect(
        find.text('0'),
        findsOneWidget,
      );

      for (int i = 0; i < 5; i++) {
        await tester.tap(
          find.byKey(
            const Key('button'),
          ),
        );

        await tester.pump();
        expect(
          find.text('${i + 1}'),
          findsOneWidget,
        );
      }
      await tester.pumpAndSettle();
      expect(
        find.byKey(
          const Key('button'),
        ),
        findsNothing,
      );
    },
  );

  testWidgets(
    'CounterView > abc',
    (tester) async {
      await tester.pumpWidget(
        const MyApp(
          initialRoute: Routes.COUNTER,
        ),
      );

      await tester.tap(
        find.byKey(
          const Key('abc'),
        ),
      );
      await tester.pumpAndSettle();
      expect(
        find.text('abc'),
        findsWidgets,
      );
    },
  );
}
