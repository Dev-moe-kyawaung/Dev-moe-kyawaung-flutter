import 'package:flutter/material.dart';
import '../../../../core/constants/app_links.dart';

class SocialLinksGrid extends StatelessWidget {
  const SocialLinksGrid({super.key});

  @override
  Widget build(BuildContext context) {
    final items = [
      ('GitHub', Icons.code_rounded, AppLinks.github),
      ('LinkedIn', Icons.work_rounded, AppLinks.linkedin),
      ('YouTube', Icons.play_circle_fill_rounded, AppLinks.youtube),
      ('Gravatar', Icons.account_circle_rounded, AppLinks.gravatar),
    ];

    return Container(
      padding: const EdgeInsets.all(22),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.white12),
        color: Colors.white.withValues(alpha: 0.03),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Social links',
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(height: 18),
          Wrap(
            spacing: 12,
            runSpacing: 12,
            children: items
                .map(
                  (item) => _SocialButton(
                    label: item.$1,
                    icon: item.$2,
                    url: item.$3,
                  ),
                )
                .toList(),
          ),
          const SizedBox(height: 20),
          const Text(
            'Phone: +95 9 889 000 889
+959 666 000 050',
            style: TextStyle(color: Colors.white70, height: 1.6),
          ),
        ],
      ),
    );
  }
}

class _SocialButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final String url;

  const _SocialButton({
    required this.label,
    required this.icon,
    required this.url,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      onPressed: () {},
      icon: Icon(icon, size: 18),
      label: Text(label),
      style: OutlinedButton.styleFrom(
        foregroundColor: Colors.white,
        side: const BorderSide(color: Colors.cyanAccent),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
      ),
    );
  }
}
