import 'package:flutter/material.dart';
import 'package:zipense/core/utils/size.dart';

// Home Button

// Radial Gradient
// rgba(255, 152, 0, 1Color.fromARGB(101, 85, 85, 85) 109)74)18)/ rgba(244, 67, 54, 1)

class AppColors {
  static const primaryColor = Color.fromRGBO(0, 36, 79, 1);
  static const white = Colors.white;
}

class TextStyles {
  ///.
  ///```dart
  ///final double fontSize = 14.sp;
  ///```
  static TextStyle text({
    Color? color,
    double? fontSizeDiff,
    FontWeight? fontWeight,
    TextOverflow? overflow,
    String? fontFamily,
    bool italic = false,
    bool removeDeafultPadding = false,
    TextDecoration? decoration,
  }) {
    final double fontSize = 14.sp;
    return TextStyle(
      // color: color ?? AppColor.gray50,
      fontSize: fontSizeDiff != null ? fontSize + fontSizeDiff.sp : fontSize,
      fontWeight: fontWeight,
      overflow: overflow,
      fontStyle: italic ? FontStyle.italic : null,
      height: removeDeafultPadding ? 1 : null,
      fontFamily: fontFamily,
    );
  }
}
