import '../../simple_validator.dart';
import 'base_rule.dart';

class AtLeastOneLowerCaseRule extends BaseRule {
  AtLeastOneLowerCaseRule(
      {String errorMsg = "At least one letter should be in lower case."})
      : super(errorMsg: errorMsg);

  @override
  bool validate(String text) {
    return RegexRule(pattern: "^(?=.*[a-z]).+\$").validate(text);
  }
}
