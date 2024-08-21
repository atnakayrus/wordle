import 'dart:ui';

import 'package:flutter/material.dart';

class Config {
  final Duration animationDuration = const Duration(milliseconds: 200);

// First get the FlutterView.
  FlutterView view = WidgetsBinding.instance.platformDispatcher.views.first;

// Dimensions in physical pixels (px)
  Size getSize() {
    Size size = view.physicalSize;
    return size;
  }

// Dimensions in logical pixels (dp)
  Size getLogicalSize() {
    Size size = view.physicalSize / view.devicePixelRatio;
    return size;
  }
}
