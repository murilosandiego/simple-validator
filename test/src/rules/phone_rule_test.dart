import 'package:simple_validator/src/rules/phone_rule.dart';
import 'package:test/test.dart';

main() {
  test('Phone number', () {
    List<String> validPhones = [
      "99999-9990",
      "01199999-9999",
      "1199999-9999",
      "+551199999-9999",
      "+5501199999-9999",
      "(123) 456-7890"
    ];

    for (var phone in validPhones) {
      final success = PhoneRule().validate(phone);
      expect(success, true);
    }

    List<String> invalidPhones = [
      "99999-9",
      "99999-92323233333",
    ];

    for (var phone in invalidPhones) {
      final error = PhoneRule().validate(phone);
      expect(error, false);
    }
  });
}
