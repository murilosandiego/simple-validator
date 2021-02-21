import 'base_rule.dart';

class RegexRule extends BaseRule {
  RegexRule({String pattern, String errorMsg = "RegEx pattern doesn't match!"})
      : super(errorMsg: errorMsg) {
    this.pattern = pattern;
  }

  var pattern;

  @override
  bool validate(String text) {
    return RegExp(pattern).hasMatch(text);
  }
}
