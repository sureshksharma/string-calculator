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

  test('Multiple numbers comma seperated returns the sum', () {
    expect(add('1,5,3,2'), 11);
  });

  test('New line as delimiter', () {
    expect(add('1\n2,3'), 6);
  });

  test('Custom delimiter in numbers', () {
    expect(add('//;\n1;2'), 3);
  });

  test('Custom delimiter in numbers', () {
    expect(add('//\$\n1\$2'), 3);
  });

  test('Throws on negative numbers', () {
    expect(
        () => add('1,-2,3'),
        throwsA(predicate((e) =>
            e is Exception &&
            e.toString().contains('negative numbers are not allowed: -2'))));
  });

  test('Shows all negative numbers', () {
    expect(
        () => add('-1,-3,-5'),
        throwsA(predicate((e) => e
            .toString()
            .contains('negative numbers are not allowed: -1,-3,-5'))));
  });
}
