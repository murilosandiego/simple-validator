String getOnlyNumber(String text) {
  return text.replaceAll(RegExp(r'[^0-9]'), '');
}
