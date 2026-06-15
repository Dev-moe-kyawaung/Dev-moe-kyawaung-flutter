import 'package:flutter/material.dart';
import '../../../../core/widgets/cyber_frame.dart';
import '../widgets/skill_progress_item.dart';

class SkillsSection extends StatefulWidget {
  const SkillsSection({super.key});

  @override
  State<SkillsSection> createState() => _SkillsSectionState();
}

class _SkillsSectionState extends State<SkillsSection>
    with SingleTickerProviderStateMixin {
  late final AnimationController _entrance = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 900),
  )..forward();

  @override
  void dispose() {
    _entrance.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final skills = [
      ('Flutter', 0.95),
      ('Kotlin', 0.92),
      ('Jetpack Compose', 0.90),
      ('MVVM / Clean Arch', 0.88),
      ('Firebase', 0.84),
      ('REST APIs', 0.87),
      ('Cybersecurity', 0.72),
      ('AI / ML', 0.76),
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 18),
      child: AnimatedBuilder(
        animation: _entrance,
        builder: (context, child) {
          final t = Curves.easeOutCubic.transform(_entrance.value);
          return Opacity(
            opacity: t,
            child: Transform.translate(
              offset: Offset(0, 28 * (1 - t)),
              child: child,
            ),
          );
        },
        child: CyberFrame(
          child: Padding(
            padding: const EdgeInsets.all(26),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const _SectionLabel(label: 'Skills'),
                const SizedBox(height: 12),
                const Text(
                  'Skills & Technologies',
                  style: TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                    height: 1.1,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  'A focused stack for mobile, backend integration, security, and AI-assisted product building.',
                  style: TextStyle(
                    color: Colors.white.withValues(alpha: 0.72),
                    height: 1.6,
                  ),
                ),
                const SizedBox(height: 24),
                LayoutBuilder(
                  builder: (context, constraints) {
                    final wide = constraints.maxWidth > 900;
                    return Wrap(
                      spacing: 16,
                      runSpacing: 16,
                      children: skills
                          .map(
                            (s) => SizedBox(
                              width: wide
                                  ? (constraints.maxWidth - 16) / 2
                                  : constraints.maxWidth,
                              child: SkillProgressItem(
                                label: s.$1,
                                value: s.$2,
                              ),
                            ),
                          )
                          .toList(),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _SectionLabel extends StatelessWidget {
  final String label;
  const _SectionLabel({required this.label});

  @override
  Widget build(BuildContext context) {
    return Text(
      label.toUpperCase(),
      style: const TextStyle(
        color: Colors.pinkAccent,
        fontWeight: FontWeight.w800,
        letterSpacing: 2.0,
      ),
    );
  }
}
