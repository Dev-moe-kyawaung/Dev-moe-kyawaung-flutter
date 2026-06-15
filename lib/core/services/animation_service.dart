import 'package:flutter/material.dart';

class AnimationService {
  static Animation<double> fadeSlide(AnimationController controller) {
    return CurvedAnimation(parent: controller, curve: Curves.easeOutCubic);
  }
}
