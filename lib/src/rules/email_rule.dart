import '../../simple_validator.dart';
import 'base_rule.dart';

class EmailRule extends BaseRule {
  EmailRule({String errorMsg = "Invalid Email Adress!"})
      : super(errorMsg: errorMsg);

  @override
  bool validate(String text) {
    return RegexRule(
            pattern:
                r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .validate(text);
  }
}
