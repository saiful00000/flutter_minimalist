import 'package:flutter_minimalist/source/utilities/regular_expressions.dart';

extension StringMinimulist on String{
  /// Some [String] to [num], [int], [double] parsing extensions
  double? get toDouble => double.tryParse(this);
  int? get toInt => int.tryParse(this);


  /// Some [String] utilities for presentation
  String capitalizeFirst() {
    trim();

    if(isEmpty) {
      return this;
    }

    if(RegExpressions.onlyLowercase.hasMatch(this[0])){
      final cap = this[0].toUpperCase();
      String newStr = '';
      for(var i = 0; i < length; i++){
        if(i == 0){
          newStr += cap;
        }else{
          newStr += this[i];
        }
      }
      return newStr;
    }

    return this;
  }

}