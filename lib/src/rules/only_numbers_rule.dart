import '../../simple_validator.dart';

import 'base_rule.dart';

class OnlyNumbersRule extends BaseRule {
  OnlyNumbersRule(
      {String errorMsg = "Should not contain any alphabet characters!"})
      : super(errorMsg: errorMsg);

  @override
  bool validate(String text) {
    return RegexRule(pattern: "^(0|[1-9][0-9]*)\$").validate(text);
  }
}
