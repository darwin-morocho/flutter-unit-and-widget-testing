import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_unit_and_widget_testing/app/my_app.dart';
import 'package:flutter_unit_and_widget_testing/app/presentation/routes/routes.dart';

void main() {
  testWidgets(
    'TabsView',
    (tester) async {
      await tester.pumpWidget(
        const MyApp(
          initialRoute: Routes.TABS,
        ),
      );
      expect(
        find.text('content 1'),
        findsOneWidget,
      );

      final elements = find.byType(Tab).evaluate();

      for (int i = 0; i < elements.length; i++) {
        await tester.tap(
          find.byType(Tab).at(i),
        );
        await tester.pumpAndSettle();

        expect(
          find.text('content ${i + 1}'),
          findsOneWidget,
        );
      }

      final width = tester
          .getSize(
            find.byType(Scaffold),
          )
          .width;

      await tester.dragFrom(
        const Offset(30, 200),
        Offset(width, 200),
      );
      await tester.pumpAndSettle();
      expect(
        find.text('content 2'),
        findsOneWidget,
      );
    },
  );
}
