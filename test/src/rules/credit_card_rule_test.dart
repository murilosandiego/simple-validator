import 'package:simple_validator/simple_validator.dart';
import 'package:test/test.dart';

void main() {
  test('Credit card', () {
    List<String> cards = [
      "4111 111111111111",
      "4012-0000-3333-0026",
      "4005519200000004",
      "4788250000028291",
      "4005550000000010",
      "5499740000000057",
      "5424180279791732",
      "6011000991300009",
      "6011000995500000",
      "373731623811006",
      "371449635398431"
    ];

    for (var card in cards) {
      final success = CreditCardRule().validate(card);
      expect(success, true);
    }

    List<String> wrongCards = [
      "405550000000010",
      "649973400000057",
    ];
    for (var card in wrongCards) {
      final error = CreditCardRule().validate(card);
      expect(error, false);
    }
  });
}
