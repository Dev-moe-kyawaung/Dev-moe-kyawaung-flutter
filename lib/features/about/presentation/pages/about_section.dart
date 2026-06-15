import 'package:flutter/material.dart';
import '../../../../core/widgets/cyber_frame.dart';
import '../widgets/stats_counter.dart';
import '../widgets/profile_summary_card.dart';

class AboutSection extends StatefulWidget {
  const AboutSection({super.key});

  @override
  State<AboutSection> createState() => _AboutSectionState();
}

class _AboutSectionState extends State<AboutSection>
    with SingleTickerProviderStateMixin {
  late final AnimationController _entrance = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 1000),
  )..forward();

  @override
  void dispose() {
    _entrance.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
            child: LayoutBuilder(
              builder: (context, constraints) {
                final wide = constraints.maxWidth > 980;

                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const _SectionLabel(label: 'About'),
                    const SizedBox(height: 12),
                    const Text(
                      'Developer by passion, learner by nature.',
                      style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                        height: 1.1,
                      ),
                    ),
                    const SizedBox(height: 18),
                    Text(
                      'I build modern mobile and web experiences with clean architecture, smooth interactions, and premium visual detail. '
                      'My work blends Kotlin, Flutter, Jetpack Compose, Firebase, and AI-enabled workflows to create polished, production-ready products.',
                      style: TextStyle(
                        color: Colors.white.withValues(alpha: 0.72),
                        fontSize: 16,
                        height: 1.7,
                      ),
                    ),
                    const SizedBox(height: 22),
                    if (wide)
                      const Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(child: ProfileSummaryCard()),
                          SizedBox(width: 18),
                          Expanded(child: StatsCounterGrid()),
                        ],
                      )
                    else ...[
                      const ProfileSummaryCard(),
                      const SizedBox(height: 18),
                      const StatsCounterGrid(),
                    ],
                  ],
                );
              },
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
        color: Colors.cyanAccent,
        fontWeight: FontWeight.w800,
        letterSpacing: 2.0,
      ),
    );
  }
}
