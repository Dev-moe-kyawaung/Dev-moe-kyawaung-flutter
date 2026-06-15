import 'package:flutter/material.dart';

class ProfileSummaryCard extends StatelessWidget {
  const ProfileSummaryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(22),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.white12),
        color: Colors.white.withValues(alpha: 0.03),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _Line(label: 'Full Name', value: 'Moe Kyaw Aung'),
          _Line(label: 'Role', value: 'Senior Android Developer'),
          _Line(label: 'Focus', value: 'Flutter · Kotlin · AI / ML · Cybersecurity'),
          _Line(label: 'Location', value: 'Tachileik, Myanmar ↔ Bangkok, Thailand'),
          _Line(label: 'Philosophy', value: 'Code with culture. Build with purpose.'),
        ],
      ),
    );
  }
}

class _Line extends StatelessWidget {
  final String label;
  final String value;

  const _Line({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: const TextStyle(color: Colors.white54, fontSize: 12)),
          const SizedBox(height: 3),
          Text(value, style: const TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w700)),
        ],
      ),
    );
  }
}
