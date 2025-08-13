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
  for (int num in nums) {
    sum += num;
  }
  return sum;
}
