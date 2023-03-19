import 'package:flutter/material.dart';

extension NumWidgetMinimalist on num {
  /// SizedBox [extensions] on number
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
  /// 10.[verticalSpace]
  /// 10.[horizontalSpace]
  ///
  SizedBox get verticalSpace => SizedBox(height: toDouble());

  SizedBox get horizontalSpace => SizedBox(width: toDouble());

  SizedBox get squireSpace => SizedBox(width: toDouble(), height: toDouble());

  /// EdgeInsetsGeometry [extension] on [number]
  ///
  /// Provide minimal and convenient way to use [EdgeInsetsGeometry] or [EdgeInsets]
  ///
  /// Reduce some boilerplate code from flutter design codebase
  ///
  /// Usage:
  ///
  /// 10.verticalPadding
  /// 16.horizontalPadding
  ///
  /// and so on...
  ///

  /// Bellow section stand for padding property
  EdgeInsetsGeometry get verticalPadding =>
      EdgeInsets.symmetric(vertical: toDouble());

  EdgeInsetsGeometry get horizontalPadding =>
      EdgeInsets.symmetric(horizontal: toDouble());

  EdgeInsetsGeometry get topPadding => EdgeInsets.only(top: toDouble());

  EdgeInsetsGeometry get bottomPadding => EdgeInsets.only(bottom: toDouble());

  EdgeInsetsGeometry get rightPadding => EdgeInsets.only(right: toDouble());

  EdgeInsetsGeometry get leftPadding => EdgeInsets.only(left: toDouble());

  EdgeInsetsGeometry get allPadding => EdgeInsets.all(toDouble());

  /// bellow section stand for margin property
  EdgeInsetsGeometry get verticalMargin =>
      EdgeInsets.symmetric(vertical: toDouble());

  EdgeInsetsGeometry get horizontalMargin =>
      EdgeInsets.symmetric(horizontal: toDouble());

  EdgeInsetsGeometry get topMargin => EdgeInsets.only(top: toDouble());

  EdgeInsetsGeometry get bottomMargin => EdgeInsets.only(bottom: toDouble());

  EdgeInsetsGeometry get rightMargin => EdgeInsets.only(right: toDouble());

  EdgeInsetsGeometry get leftMargin => EdgeInsets.only(left: toDouble());

  EdgeInsetsGeometry get allMargin => EdgeInsets.all(toDouble());
}
