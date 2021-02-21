import 'package:simple_validator/simple_validator.dart';
import 'package:test/test.dart';

void main() {
  test('At least one letter should be in upper case', () {
    final wrongResult = AtLeastOneUppercaseRule().validate("tExt");
    expect(wrongResult, true);
    final goodResult = AtLeastOneUppercaseRule().validate("text");
    expect(goodResult, false);
  });
}
