import 'dart:async';
import 'package:flutter/material.dart';

class StatsCounterGrid extends StatelessWidget {
  const StatsCounterGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 14,
      runSpacing: 14,
      children: const [
        _CounterCard(label: 'Certificates', end: 82),
        _CounterCard(label: 'GitHub Projects', end: 16),
        _CounterCard(label: 'Tech Domains', end: 40),
        _CounterCard(label: 'Years Building', end: 3),
      ],
    );
  }
}

class _CounterCard extends StatefulWidget {
  final String label;
  final int end;

  const _CounterCard({required this.label, required this.end});

  @override
  State<_CounterCard> createState() => _CounterCardState();
}

class _CounterCardState extends State<_CounterCard> {
  int _value = 0;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(milliseconds: 18), (timer) {
      if (_value >= widget.end) {
        timer.cancel();
        return;
      }
      setState(() => _value += 1);
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: Colors.cyanAccent.withValues(alpha: 0.2)),
        color: Colors.black.withValues(alpha: 0.16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '$_value+',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.w900,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            widget.label,
            style: const TextStyle(color: Colors.white70, fontSize: 13),
          ),
        ],
      ),
    );
  }
}
