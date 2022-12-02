import 'package:flutter/cupertino.dart';

extension NumMinimalist on num {
  /// SizedBox extensions on number
  ///
  /// Its easy to use and its reduce some repeated boilerplate code
  /// and minimize the codebase.
  /// Specially when we design UI we use lots of [SizedBox] for
  /// spacing
  ///
  /// -> -> ->
  ///        |
  ///       \/
  ///
  /// Usage:
  ///
  /// 10.verticalSpace // a [SizedBox] with height or 10
  /// 10.horizontalSpace // a [SizedBox]  with width of 10
  ///

  SizedBox get verticalSpace => SizedBox(height: toDouble());

  SizedBox get horizontalSpace => SizedBox(width: toDouble());

  SizedBox get squireSpace => SizedBox(width: toDouble(), height: toDouble());
}
