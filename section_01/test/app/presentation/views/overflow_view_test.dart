import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_unit_and_widget_testing/app/my_app.dart';
import 'package:flutter_unit_and_widget_testing/app/presentation/routes/routes.dart';

void main() {
  testWidgets(
    'OverflowView',
    (tester) async {
      // tester.binding.window.physicalSizeTestValue = const Size(
      //   2400.0 * 2,
      //   1800.0 * 2,
      // );
      await tester.pumpWidget(
        const MyApp(
          initialRoute: Routes.OVERFLOW,
        ),
      );
      // tester.binding.window.clearPhysicalSizeTestValue();
    },
  );
}
