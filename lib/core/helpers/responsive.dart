import 'package:flutter/widgets.dart';

class Responsive {
  static bool isMobile(BuildContext context) => MediaQuery.sizeOf(context).width < 700;
  static bool isTablet(BuildContext context) => MediaQuery.sizeOf(context).width < 1024;
  static bool isDesktop(BuildContext context) => MediaQuery.sizeOf(context).width >= 1024;
}
