int add(String input) {
  var numbers = input.trim();
  if (numbers.isEmpty) return 0;
  var sum = 0;

  List<String> parts = numbers.split(RegExp(r'[,\n]'));

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
