import '../../simple_validator.dart';

import 'base_rule.dart';

class NonNumbersRule extends BaseRule {
  NonNumbersRule({String errorMsg = "Should not contain any numbers!"})
      : super(errorMsg: errorMsg);

  @override
  bool validate(String text) {
    return !RegexRule(pattern: ".*\\d.*").validate(text);
  }
}
