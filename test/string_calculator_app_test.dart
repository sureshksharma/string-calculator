import 'package:string_calculator_app/string_calculator_app.dart';
import 'package:test/test.dart';

void main() {
  test('Empty string returns 0', () {
    expect(add(''), 0);
  });

  test('Single number returns the same number', () {
    expect(add('1'), 1);
  });

  test('Two numbers comma seperated returns the sum', () {
    expect(add('1,5'), 6);
  });
}
