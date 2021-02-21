import 'package:simple_validator/simple_validator.dart';
import 'package:test/test.dart';

void main() {
  test('Should not contain any special characters', () {
    final wrongResult = NoSpecialCharacterRule().validate("Tex#");
    expect(wrongResult, false);
    final goodResult = NoSpecialCharacterRule().validate("text lorem");
    expect(goodResult, true);
  });
}
