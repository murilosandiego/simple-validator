import '../../simple_validator.dart';

import 'base_rule.dart';

class AtLeastOneUppercaseRule extends BaseRule {
  AtLeastOneUppercaseRule(
      {String errorMsg = "At least one letter should be in upper case."})
      : super(errorMsg: errorMsg);

  @override
  bool validate(String text) {
    return RegexRule(pattern: "^(?=.*[A-Z]).+\$").validate(text);
  }
}
