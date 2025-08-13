

import 'package:incubyte_tdd_assessment/incubyte_tdd_assessment.dart';
import 'package:test/test.dart';

void main() {
  test('empty string returns 0', () {
    expect(add(''), equals(0));
  });

  test('single number returns that number', () {
    expect(add('1'), equals(1));
  });

  test('two numbers comma separated', () {
    expect(add('1,5'), equals(6));
  });

  test('multiple numbers', () {
    expect(add('1,2,3,4'), equals(10));
  });
}
