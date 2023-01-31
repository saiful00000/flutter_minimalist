import 'package:flutter_minimalist/source/utilities/regular_expressions.dart';

extension StringMinimulist on String{
  /// Some [String] to [num], [int], [double] parsing extensions
  double? get toDouble => double.tryParse(this);
  int? get toInt => int.tryParse(this);

  /// Checks if string is an video file.
  static bool isVideo(String filePath) {
    var low = filePath.toLowerCase();

    return low.endsWith(".mp4") ||
        low.endsWith(".avi") ||
        low.endsWith(".wmv") ||
        low.endsWith(".rmvb") ||
        low.endsWith(".mpg") ||
        low.endsWith(".mpeg") ||
        low.endsWith(".3gp");
  }

  /// Checks if string is an image file.
  static bool isImage(String filePath) {
    final low = filePath.toLowerCase();

    return low.endsWith(".jpg") ||
        low.endsWith(".jpeg") ||
        low.endsWith(".png") ||
        low.endsWith(".gif") ||
        low.endsWith(".bmp");
  }

  /// Checks if string is an audio file.
  static bool isAudio(String filePath) {
    final low = filePath.toLowerCase();

    return low.endsWith(".mp3") ||
        low.endsWith(".wav") ||
        low.endsWith(".wma") ||
        low.endsWith(".amr") ||
        low.endsWith(".ogg");
  }

  /// Checks if string is an powerpoint file.
  static bool isPPT(String filePath) {
    final low = filePath.toLowerCase();

    return low.endsWith(".ppt") || low.endsWith(".pptx");
  }

  /// Checks if string is an word file.
  static bool isWord(String filePath) {
    final low = filePath.toLowerCase();

    return low.endsWith(".doc") || low.endsWith(".docx");
  }

  /// Checks if string is an excel file.
  static bool isExcel(String filePath) {
    final low = filePath.toLowerCase();

    return low.endsWith(".xls") || low.endsWith(".xlsx");
  }

  /// Checks if string is an apk file.
  bool get isAPK => toLowerCase().endsWith(".apk");

  /// Checks if string is an pdf file.
  bool get isPDF => toLowerCase().endsWith(".pdf");

  /// Checks if string is an txt file.
  bool get isTxt => toLowerCase().endsWith(".txt");

  /// Checks if string is an chm file.
  bool get isChm => toLowerCase().endsWith(".chm");

  /// Checks if string is a vector file.
  bool get isVector => toLowerCase().endsWith(".svg");


  /// Checks if string is an html file.
  bool get isHTML => toLowerCase().endsWith(".html");

  /// Validate if string is valid URL
  bool get isURL => RegExPatterns.url.hasMatch(this);

  /// Validate if string is a valid email address
  /// Note: this validation validate only the syntactically
  bool get isEmailAddress => RegExPatterns.email.hasMatch(this);

  /// Checks if string consist only numeric.
  /// Numeric only doesn't accepting "." which double data type have
  bool get isNumericOnly => RegExPatterns.numericOnly.hasMatch(this);

  /// Capitalize the first character of a string that start with alphabet
  String get capitalizeFirst => _capitalizeFirst();
  String _capitalizeFirst() {
    trim();

    if(isEmpty) {
      return this;
    }

    if(RegExPatterns.onlyLowercase.hasMatch(this[0])){
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