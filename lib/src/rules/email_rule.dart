import '../../simple_validator.dart';
import 'base_rule.dart';

class EmailRule extends BaseRule {
  EmailRule({String errorMsg = "Invalid Email Adress!"})
      : super(errorMsg: errorMsg);

  @override
  bool validate(String text) {
    return RegexRule(
            pattern:
                "^[a-zA-Z0-9.!#\$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*\$")
        .validate(text);
  }
}
