import 'package:simple_validator/simple_validator.dart';
import 'package:test/test.dart';

void main() {
  test('Should not contain any numbers!', () {
    final result = Validator(text: "text", onSuccess: () => print('tudo ok'))
        .addRule(NonNumbersRule())
        .check();

    expect(result, true);
  });

  test('Should fail and print error message', () {
    Validator(text: "t3ext", onError: (msg) => {expect("Error here", msg)})
        .addRule(NonNumbersRule(errorMsg: "Error here"))
        .check();
  });

  test('Should not contain any numbers and contain at least one lowercase', () {
    final newValidator = Validator(text: "text")
        .addRule(NonNumbersRule())
        .addRule(AtLeastOneLowerCaseRule())
        .check();

    expect(newValidator, true);

    final newValidators = Validator(
      text: "TEXT",
      onError: (msg) => print(msg),
    ).addRule(NonNumbersRule()).addRule(AtLeastOneLowerCaseRule()).check();

    expect(newValidators, false);
  });

  test('Should not contain any numbers and all uppercase', () {
    final successValidator = Validator(text: "TEXT")
        .addRule(NonNumbersRule())
        .addRule(AllUppercaseRule())
        .check();

    expect(successValidator, true);

    final wrongValidator = Validator(text: "TEXtO2")
        .addRule(NonNumbersRule())
        .addRule(AllUppercaseRule())
        .check();

    expect(wrongValidator, false);
  });
}
