int add(String numbers) {
  if (numbers.isEmpty) return 0;
  String delimiterPattern = '[,\n]';
  if (numbers.startsWith('//')) {
    final parts = numbers.split('\n');
    final delimeterLine = parts[0];
    final delimeter = RegExp.escape(delimeterLine.substring(2));
    delimiterPattern = '[$delimeter\n]';
    numbers = parts.sublist(1).join('\n');
  }
  final parts = numbers.split(RegExp(delimiterPattern));
  final intList = parts.map(int.parse);
  final negetiveNums = intList.where((n) => n < 0).toList();
  if (negetiveNums.isNotEmpty) {
    throw Exception(
        'negative numbers are not allowed: ${negetiveNums.join(',')}');
  }

  return intList.reduce((a, b) => a + b);
}
