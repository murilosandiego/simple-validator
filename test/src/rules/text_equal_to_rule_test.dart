import 'package:simple_validator/simple_validator.dart';
import 'package:test/test.dart';

void main() {
  test("Should be equal to 'target'", () {
    final wrongResult = TextEqualToRule(target: "target").validate("Tex");
    expect(wrongResult, false);
    final goodResult = TextEqualToRule(target: "target").validate("target");
    expect(goodResult, true);
  });
}
