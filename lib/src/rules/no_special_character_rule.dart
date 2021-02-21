import '../../simple_validator.dart';

import 'base_rule.dart';

class NoSpecialCharacterRule extends BaseRule {
  NoSpecialCharacterRule(
      {String errorMsg = "Should not contain any special characters"})
      : super(errorMsg: errorMsg);

  @override
  bool validate(String text) {
    if (text.isEmpty) return false;
    final noWhiteSpacesText = text.replaceAll(" ", "");

    return RegexRule(pattern: "^[a-zA-Z0-9]{4,10}\$")
        .validate(noWhiteSpacesText);
  }
}
