extension StringExtension on String {
  String capitalize() {
    String firstLetter = this[0].toUpperCase();
    String restOfWord = substring(1);

    return "$firstLetter$restOfWord";
  }
}