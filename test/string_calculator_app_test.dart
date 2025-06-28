import 'package:string_calculator_app/string_calculator_app.dart';
import 'package:test/test.dart';

void main() {
  test('Empty string returns 0', () {
    expect(add(''), 0);
  });

  test('Single number returns the same number', () {
    expect(add('5'), 5);
  });
}
