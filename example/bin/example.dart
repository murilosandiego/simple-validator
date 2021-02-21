import 'package:simple_validator/simple_validator.dart';

void main(args) {
  final isValid = Validator(text: 'email@gmail.com')
      .addRule(NonEmptyRule())
      .addRule(NonNumbersRule())
      .addRule(EmailRule())
      .check();

  print('isValid => $isValid');

  final isValidPassword = Validator(
    text: 'Passw0rd#Suc2021',
    onError: (msg) => print(msg),
    onSuccess: () => print('validation successful'),
  )
      .addRule(NonEmptyRule())
      .addRule(MinLengthRule(minLength: 8))
      .addRule(AtLeastOneUppercaseRule())
      .addRule(AtLeastOneSpecialCharacterRule())
      .addRule(AtLeastOneNumberRule())
      .check();

  print('isValidPassword => $isValidPassword');

  final wrongPassword = Validator(
    text: 'Passw0rdSuc2021',
    onError: (msg) => print(msg),
    onSuccess: () => print('validation successful'),
  )
      .addRule(NonEmptyRule())
      .addRule(MinLengthRule(minLength: 8))
      .addRule(AtLeastOneUppercaseRule())
      .addRule(AtLeastOneSpecialCharacterRule())
      .addRule(AtLeastOneNumberRule())
      .check();

  print('wrongPassword => $wrongPassword');
}
