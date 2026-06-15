import 'package:flutter/material.dart';

extension ContextX on BuildContext {
  Size get size => MediaQuery.sizeOf(this);
  bool get isMobile => size.width < 700;
  bool get isTablet => size.width < 1024;
  bool get isDesktop => size.width >= 1024;
}
