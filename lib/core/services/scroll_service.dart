import 'package:flutter/material.dart';

class ScrollService {
  final ScrollController controller;

  ScrollService(this.controller);

  double get progress {
    if (!controller.hasClients) return 0;
    final max = controller.position.maxScrollExtent;
    if (max <= 0) return 0;
    return (controller.offset / max).clamp(0.0, 1.0);
  }

  Future<void> toTop() async {
    if (!controller.hasClients) return;
    await controller.animateTo(
      0,
      duration: const Duration(milliseconds: 700),
      curve: Curves.easeInOutCubic,
    );
  }
}
