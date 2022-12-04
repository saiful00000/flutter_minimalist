import 'package:flutter/widgets.dart';
import 'package:flutter_minimalist/flutter_minimalist.dart';

/// add Padding Property to widget
extension MarginPaddingExtention on Widget {
  Widget paddingAll(double padding) {
    return Padding(
      padding: padding.allPadding,
      child: this,
    );
  }

  Widget paddingSymmetric({
    double horizontal = 0.0,
    double vertical = 0.0,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: horizontal,
        vertical: vertical,
      ),
      child: this,
    );
  }

  Widget paddingOnly({
    double left = 0.0,
    double top = 0.0,
    double right = 0.0,
    double bottom = 0.0,
  }) {
    return Padding(
      padding: EdgeInsets.only(
        top: top,
        left: left,
        right: right,
        bottom: bottom,
      ),
      child: this,
    );
  }

  Widget get paddingZero => Padding(padding: EdgeInsets.zero, child: this);


  Widget marginAll(double margin) {
    return Container(margin: EdgeInsets.all(margin), child: this);
  }

  Widget marginSymmetric({
    double horizontal = 0.0,
    double vertical = 0.0,
  }) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical),
      child: this,
    );
  }

  Widget marginOnly({
    double left = 0.0,
    double top = 0.0,
    double right = 0.0,
    double bottom = 0.0,
  }) {
    return Container(
      margin: EdgeInsets.only(
        top: top,
        left: left,
        right: right,
        bottom: bottom,
      ),
      child: this,
    );
  }

  Widget get marginZero => Container(margin: EdgeInsets.zero, child: this);
}
