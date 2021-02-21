import '../simple_validator.dart';

class Validator {
  Validator({
    this.text,
    this.onError,
    this.onSuccess,
  }) : assert(text != null);

  final String text;
  final List<BaseRule> rulesList = [];
  final Function(String msg) onError;
  final Function() onSuccess;

  bool check() {
    for (final rule in rulesList) {
      if (!_isRuleValid(rule)) {
        if (onError != null) {
          onError(rule.errorMsg);
        }

        return false;
      }
    }

    if (onSuccess != null) {
      onSuccess();
    }
    return true;
  }

  Validator addRule(BaseRule rule) {
    rulesList.add(rule);
    return this;
  }

  bool _isRuleValid(BaseRule rule) {
    return rule.validate(text);
  }
}
