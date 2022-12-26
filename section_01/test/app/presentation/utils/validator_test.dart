import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_unit_and_widget_testing/app/presentation/utils/validator.dart';

void main() {
  test(
    'isValidEmail',
    () {
      expect(
        isValidEmail('text'),
        false,
      );

      expect(
        isValidEmail('test@test.com'),
        true,
      );

      expect(
        isValidEmail('meedu.app@test.com'),
        true,
      );
    },
  );

  group(
    'isValidPassword > ',
    () {
      test(
        'empty text',
        () {
          final errors = isValidPassword(' ');
          expect(errors.length, 4);
        },
      );

      test(
        'white spaces',
        () {
          final errors = isValidPassword(' lala as ');
          expect(
            errors.contains(PasswordErrors.whiteSpaces),
            true,
          );
        },
      );

      test(
        'at Least 6 Characters',
        () {
          final errors = isValidPassword('testabc');
          expect(
            errors.contains(PasswordErrors.atLeast6Characters),
            false,
          );
        },
      );

      test(
        'at Least 1 Number',
        () {
          final errors = isValidPassword('testabc1');
          expect(
            errors.contains(PasswordErrors.atLeast1Number),
            false,
          );
        },
      );

      test(
        'success',
        () {
          final errors = isValidPassword('testabc1A');
          expect(errors.isEmpty, true);
        },
      );
    },
  );
}
