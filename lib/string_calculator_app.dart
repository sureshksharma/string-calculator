int add(String numbers) {
  if (numbers.isEmpty) return 0;
  String delimiterPattern = '[,\n]';
  if (numbers.startsWith('//')) {
    final parts = numbers.split('\n');
    final delimeterLine = parts[0];
    final delimeter = RegExp.escape(delimeterLine.substring(2));
    print('delimeter: $delimeter');
    delimiterPattern = '[$delimeter\n]';
    print('delimiterPattern: $delimiterPattern');
    print('sublist: ${parts.sublist(1)}');
    numbers = parts.sublist(1).join('\n');
    print('numbers: $numbers');
  }
  final parts = numbers.split(RegExp(delimiterPattern));
  return parts.map(int.parse).reduce((a, b) => a + b);
}
