import 'package:flutter_minimalist/source/extensions/string_extension.dart';
import 'package:flutter_minimalist/source/minimals/future_minimalist.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_minimalist/flutter_minimalist.dart';

void main() {
  test('Wait testing', () async {
    print('entering...');
    print('wait for 5 seconds.');
    await 5.seconds.wait;
    print('end of waiting.');
    print('end of test.');
  });
}
