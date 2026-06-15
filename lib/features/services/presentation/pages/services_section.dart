import 'package:flutter/material.dart';
import '../../../../core/widgets/cyber_frame.dart';
import '../widgets/service_card.dart';

class ServicesSection extends StatefulWidget {
  const ServicesSection({super.key});

  @override
  State<ServicesSection> createState() => _ServicesSectionState();
}

class _ServicesSectionState extends State<ServicesSection>
    with SingleTickerProviderStateMixin {
  late final AnimationController _entrance = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 950),
  )..forward();

  @override
  void dispose() {
    _entrance.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final services = [
      ('Flutter Development', 'Premium cross-platform apps with polished UI and maintainable architecture.', Icons.flutter_dash_rounded),
      ('Android Engineering', 'Senior Kotlin, Jetpack Compose, MVVM, and Clean Architecture solutions.', Icons.phone_android_rounded),
      ('UI / Motion Design', 'Neon interfaces, motion systems, and visually distinct cyber aesthetics.', Icons.animation_rounded),
      ('API Integration', 'Firebase, REST APIs, secure auth flows, and real-time data sync.', Icons.cloud_sync_rounded),
      ('AI / ML Features', 'Claude API, TFLite, and on-device intelligence for smarter apps.', Icons.smart_toy_rounded),
      ('Security / Audits', 'Security-minded development, hardening, and app review support.', Icons.security_rounded),
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
                const _SectionLabel(label: 'Services'),
                const SizedBox(height: 12),
                const Text(
                  'Services',
                  style: TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                    height: 1.1,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  'A six-part service stack designed for premium product delivery and long-term maintainability.',
                  style: TextStyle(
                    color: Colors.white.withValues(alpha: 0.72),
                    height: 1.6,
                  ),
                ),
                const SizedBox(height: 24),
                LayoutBuilder(
                  builder: (context, constraints) {
                    final wide = constraints.maxWidth > 1050;
                    final itemWidth = wide
                        ? (constraints.maxWidth - 32) / 3
                        : constraints.maxWidth;

                    return Wrap(
                      spacing: 16,
                      runSpacing: 16,
                      children: services
                          .map(
                            (s) => SizedBox(
                              width: itemWidth,
                              child: ServiceCard(
                                title: s.$1,
                                description: s.$2,
                                icon: s.$3,
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
        color: Colors.yellowAccent,
        fontWeight: FontWeight.w800,
        letterSpacing: 2.0,
      ),
    );
  }
}
