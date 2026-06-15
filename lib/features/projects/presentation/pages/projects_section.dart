import 'package:flutter/material.dart';
import '../../../../core/widgets/cyber_frame.dart';
import '../widgets/project_card.dart';

class ProjectsSection extends StatefulWidget {
  const ProjectsSection({super.key});

  @override
  State<ProjectsSection> createState() => _ProjectsSectionState();
}

class _ProjectsSectionState extends State<ProjectsSection>
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
    final projects = [
      (
        'Social Dashboard',
        'Analytics-rich dashboard with modern UI and data-heavy interaction patterns.',
        ['Flutter', 'Dashboard', 'Analytics'],
      ),
      (
        'PWA App',
        'Fast web-first app with installable experience and responsive layout.',
        ['Flutter Web', 'PWA', 'Responsive']
      ),
      (
        'Game Collection',
        'Arcade-style collection of interactive games with playful visuals.',
        ['Games', 'UI', 'Entertainment']
      ),
      (
        'Job Portal App',
        'Recruitment and listing flow with polished filters and user journeys.',
        ['Jobs', 'Listings', 'Search']
      ),
      (
        'POS Ultimate Pro Max',
        'Advanced point-of-sale system with business-focused workflows.',
        ['POS', 'Business', 'Enterprise']
      ),
      (
        'Weather / Crypto / Todo Suite',
        'Utility app collection showing clean patterns across multiple domains.',
        ['Utilities', 'Data', 'Mobile']
      ),
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
                const _SectionLabel(label: 'Projects'),
                const SizedBox(height: 12),
                const Text(
                  'Projects',
                  style: TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                    height: 1.1,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  'Selected work built to show senior-level product thinking, architecture, and visual polish.',
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
                      children: projects
                          .map(
                            (p) => SizedBox(
                              width: itemWidth,
                              child: ProjectCard(
                                title: p.$1,
                                description: p.$2,
                                tags: p.$3,
                                demoUrl: 'https://your-demo-link.com',
                                sourceUrl: 'https://github.com/Dev-moe-kyawaung',
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
