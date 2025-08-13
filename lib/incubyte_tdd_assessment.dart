int add(String input) {
  var numbers = input.trim();
  if (numbers.isEmpty) return 0;
  var sum = 0;

  String delimiterPattern = r'[,\n]';
  String numberPart = numbers;

  if (numbers.startsWith("//")) {
    List<String> lines = numbers.split("\n");
    String delimiterLine = lines[0];
    numberPart = lines.sublist(1).join("\n");

    String customDelimiter = delimiterLine.substring(2);
    delimiterPattern = RegExp.escape(customDelimiter);
  }

  List<String> parts = numberPart.split(RegExp(delimiterPattern));

  List<int> nums = [];
  for (String part in parts) {
    if (part.trim().isNotEmpty) {
      nums.add(int.parse(part.trim()));
    }
  }
  final negatives = nums.where((n) => n < 0).toList();
  if (negatives.isNotEmpty) {
    throw NegativeNumbersException(negatives);
  }
  for (int num in nums) {
    sum += num;
  }
  return sum;
}

class NegativeNumbersException implements Exception {
  final List<int> negatives;
  NegativeNumbersException(this.negatives);
  @override
  String toString() => 'NegativeNumbersException: negative numbers not allowed ${negatives.join(',')}';
}
