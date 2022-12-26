import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_unit_and_widget_testing/app/my_app.dart';
import 'package:flutter_unit_and_widget_testing/app/presentation/routes/routes.dart';
import 'package:flutter_unit_and_widget_testing/app/presentation/utils/validator.dart';

void main() {
  final emailFinder = find.byKey(
    const Key('input-email'),
  );
  final passwordFinder = find.byKey(
    const Key('input-password'),
  );

  final buttonFinder = find.byType(ElevatedButton);

  testWidgets(
    'LoginView > invalid fields',
    (tester) async {
      await _initView(tester);

      expect(
        find.text('Invalid email'),
        findsNothing,
      );

      await tester.tap(
        buttonFinder,
      );

      await tester.pump();

      expect(
        find.text('Invalid email'),
        findsOneWidget,
      );

      await tester.enterText(
        emailFinder,
        'test@test.com',
      );
      await tester.pump();
      expect(
        find.text('Invalid email'),
        findsNothing,
      );

      await tester.enterText(
        passwordFinder,
        'Test123@',
      );
      await tester.pump();
      expect(
        find.text(PasswordErrors.atLeast1Number),
        findsNothing,
      );
      expect(
        find.text(PasswordErrors.atLeast1UpperCase),
        findsNothing,
      );
      expect(
        find.text(PasswordErrors.atLeast6Characters),
        findsNothing,
      );
      expect(
        find.text(PasswordErrors.whiteSpaces),
        findsNothing,
      );
    },
  );

  testWidgets(
    'LoginView > invalid credentials',
    (tester) async {
      await _initView(tester);
      await tester.enterText(
        emailFinder,
        'test@test.com',
      );
      await tester.enterText(
        passwordFinder,
        'Test123@123',
      );
      await tester.pump();
      await tester.tap(
        buttonFinder,
      );
      await tester.pump();
      expect(
        find.byType(CircularProgressIndicator),
        findsOneWidget,
      );
      await tester.pumpAndSettle();
      expect(
        find.byType(CircularProgressIndicator),
        findsNothing,
      );
      expect(
        find.text('Invalid email or password'),
        findsOneWidget,
      );
      await tester.tap(
        find.text('OK'),
      );
      await tester.pumpAndSettle();
      expect(
        find.text('Invalid email or password'),
        findsNothing,
      );
    },
  );

  testWidgets(
    'LoginView > ok',
    (tester) async {
      await _initView(tester);
      await tester.enterText(
        emailFinder,
        'test@test.com',
      );
      await tester.enterText(
        passwordFinder,
        'Test123@',
      );
      await tester.pump();
      await tester.tap(
        buttonFinder,
      );
      await tester.pumpAndSettle();
      expect(
        find.text('Invalid email or password'),
        findsNothing,
      );
      expect(
        find.text('home page'),
        findsOneWidget,
      );
    },
  );
}

Future<void> _initView(WidgetTester tester) {
  return tester.pumpWidget(
    const MyApp(
      initialRoute: Routes.LOGIN,
    ),
  );
}
