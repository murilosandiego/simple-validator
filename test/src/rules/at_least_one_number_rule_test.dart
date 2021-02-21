import 'package:simple_validator/simple_validator.dart';
import 'package:test/test.dart';

void main() {
  test('At least one letter should be a number', () {
    final wrongResult = AtLeastOneNumberRule().validate("t2xt");
    expect(wrongResult, true);
    final goodResult = AtLeastOneNumberRule().validate("TEXT");
    expect(goodResult, false);
  });
}
