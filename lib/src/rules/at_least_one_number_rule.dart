import '../../simple_validator.dart';

import 'base_rule.dart';

class AtLeastOneNumberRule extends BaseRule {
  AtLeastOneNumberRule(
      {String errorMsg = "At least one letter should be a number."})
      : super(errorMsg: errorMsg);

  @override
  bool validate(String text) {
    return RegexRule(pattern: ".*\\d.*").validate(text);
  }
}
