import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SizesConfig {
  final Size _designSize = const Size(360.0, 752.0);
  final Size _screenSize = Get.size;

  double get widthScaleFactor => _screenSize.width / _designSize.width;
  double get heightScaleFactor => _screenSize.height / _designSize.height;
  double get minScaleFactor => min(widthScaleFactor, heightScaleFactor);

  double scaleWidth(num width) => width * widthScaleFactor;
  double scaleHeight(num height) => height * heightScaleFactor;
  double scaleRadius(num r) => r * minScaleFactor;
  double scaleFontSize(num fontSize) {
    final textScaleFactor = WidgetsBinding.instance.window.textScaleFactor;
    return fontSize * minScaleFactor * textScaleFactor;
  }
}

extension SizeExtension on num {
  double get w => SizesConfig().scaleWidth(this);
  double get h => SizesConfig().scaleHeight(this);
  double get sp => SizesConfig().scaleFontSize(this);
}
