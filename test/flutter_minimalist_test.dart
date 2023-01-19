import 'package:flutter_minimalist/source/extensions/string_extensions.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_minimalist/flutter_minimalist.dart';

void main() {
  // test('adds one to input values', () {
  //   final calculator = Calculator();
  //   expect(calculator.addOne(2), 3);
  //   expect(calculator.addOne(-7), -6);
  //   expect(calculator.addOne(0), 1);
  // });

  test('Capitalize first char of a String', () {

    final result = 'shaiful'.capitalizeFirst();

    print('result => $result');

    expect(result, 'Shaiful');
  });
}
