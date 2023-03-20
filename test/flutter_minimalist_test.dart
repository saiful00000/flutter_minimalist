import 'package:flutter/foundation.dart';
import 'package:flutter_minimalist/source/minimals/future_minimalist.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Wait testing', () async {
    debugPrint('entering...');
    debugPrint('wait for 5 seconds.');
    await 5.seconds.wait;
    debugPrint('end of waiting.');
    debugPrint('end of test.');
  });
}
