import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_unit_and_widget_testing/app/my_app.dart';
import 'package:flutter_unit_and_widget_testing/app/presentation/routes/routes.dart';

void main() {
  testWidgets(
    'PlatformWidgetsView',
    (tester) async {
      await tester.pumpWidget(
        const MyApp(
          initialRoute: Routes.PLATFORM_WIDGETS,
        ),
      );
      expect(
        find.text('android'),
        findsOneWidget,
      );
    },
  );

  testWidgets(
    'PlatformWidgetsView > iOS',
    (tester) async {
      debugDefaultTargetPlatformOverride = TargetPlatform.iOS;
      await tester.pumpWidget(
        const MyApp(
          initialRoute: Routes.PLATFORM_WIDGETS,
        ),
      );
      expect(
        find.text('ios'),
        findsOneWidget,
      );
      debugDefaultTargetPlatformOverride = null;
    },
  );
}
