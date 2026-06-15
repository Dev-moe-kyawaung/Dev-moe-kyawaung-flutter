import 'package:flutter/material.dart';

class IntersectionAnimatedList extends StatelessWidget {
  final List<Widget> children;
  const IntersectionAnimatedList({super.key, required this.children});

  @override
  Widget build(BuildContext context) {
    return Column(children: children);
  }
}
