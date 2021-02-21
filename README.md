# Simple Validator

Simple Validator is a text validation library for Dart/Flutter developed in Dart.It comes with lots of built-in rules for validation such as email, password, credit cards, special character validations.
In EasyValidation library, you can perform multiple validation checks on same text at a single time. For example, you want user's password to have at least 8 characters length with one special character, one uppercase letter and one number. Then you can do these types of checks like this:

```dart
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
```

## Built-in Rules

The Easy Validator library comes with some built-in validation checks and rules. These rules can be added manually by custom rules.
You can apply these rules by calling addRule() method of the Validator object.

But if there is no rule that meets your needs, adding a new rule is very easy.
First step is you have to create your Rule class by extending BaseRule or any other existing rule like this.

```dart
class CustomRule extends BaseRule {
  CustomRule({String target, String errorMsg = "The text can only contain the word Antonio"}) {
    this.errorMsg("Should be equal to $target");
    this._target = target;
  }

  String _target;

  @override
  bool validate(String text) {
    if (text.isEmpty) return false;

    return text == _target;
  }
}
```

You can use this rule using Validator.addRule() method like this:

```dart
final isValidText = Validator(text: "Anto")
      .addRule(CustomRule())
      .check();
```

## Getting Started

### Installation

Add `simple_validator` as dependency to your flutter project by adding this lines to `pubspec.yaml`.

```yaml
dependencies:
  simple_validator:
```

Then run `flutter pub get` to install required dependencies.

## Support

Any feedback or PR is welcome.
