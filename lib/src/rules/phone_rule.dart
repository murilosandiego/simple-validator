import '../../simple_validator.dart';
import '../utils/utils.dart';

class PhoneRule extends BaseRule {
  PhoneRule({String errorMsg = "Invalid Phone Number!"})
      : super(errorMsg: errorMsg);

  @override
  bool validate(String text) {
    if (text.length > 16 || text.length < 9) return false;
    return RegexRule(pattern: r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]*$')
        .validate(getOnlyNumber(text));
  }
}
