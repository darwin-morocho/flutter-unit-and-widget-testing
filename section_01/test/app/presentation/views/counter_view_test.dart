import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_unit_and_widget_testing/app/presentation/views/counter_view.dart';

void main() {
  testWidgets(
    'CounterView',
    (tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: CounterView(),
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
        const MaterialApp(
          home: CounterView(),
        ),
      );

      await tester.tap(
        find.byType(IconButton),
      );
      await tester.pumpAndSettle();
      expect(
        find.text('abc'),
        findsWidgets,
      );
    },
  );
}
