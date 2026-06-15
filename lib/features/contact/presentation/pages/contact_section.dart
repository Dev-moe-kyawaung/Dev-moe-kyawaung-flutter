import 'package:flutter/material.dart';
import '../../../../core/widgets/cyber_frame.dart';
import '../widgets/contact_form.dart';
import '../widgets/social_links_grid.dart';

class ContactSection extends StatefulWidget {
  const ContactSection({super.key});

  @override
  State<ContactSection> createState() => _ContactSectionState();
}

class _ContactSectionState extends State<ContactSection>
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
                    const _SectionLabel(label: 'Contact'),
                    const SizedBox(height: 12),
                    const Text(
                      'Contact',
                      style: TextStyle(
                        fontSize: 34,
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                        height: 1.1,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Send a message for collaboration, freelance work, or a senior-level product discussion.',
                      style: TextStyle(
                        color: Colors.white.withValues(alpha: 0.72),
                        height: 1.6,
                      ),
                    ),
                    const SizedBox(height: 24),
                    if (wide)
                      const Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(child: ContactForm()),
                          SizedBox(width: 18),
                          Expanded(child: SocialLinksGrid()),
                        ],
                      )
                    else ...[
                      const ContactForm(),
                      const SizedBox(height: 18),
                      const SocialLinksGrid(),
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
        color: Colors.yellowAccent,
        fontWeight: FontWeight.w800,
        letterSpacing: 2.0,
      ),
    );
  }
}
