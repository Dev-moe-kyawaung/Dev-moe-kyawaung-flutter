import '../models/project_model.dart';
import '../models/service_model.dart';
import '../models/app_model.dart';
import '../models/social_link_model.dart';

class PortfolioDataSource {
  static const List<ProjectModel> projects = [
    ProjectModel(
      title: 'Social Dashboard',
      description: 'Analytics-rich dashboard with modern UI and data-heavy interaction patterns.',
      tags: ['Flutter', 'Dashboard', 'Analytics'],
      demoUrl: 'https://moekyaw.lovable.app',
      sourceUrl: 'https://github.com/moekyawaung-tech/social-dashboard',
    ),
    ProjectModel(
      title: 'PWA App',
      description: 'Fast web-first app with installable experience and responsive layout.',
      tags: ['Flutter Web', 'PWA', 'Responsive'],
      demoUrl: 'https://moekyaw.lovable.app',
      sourceUrl: 'https://github.com/moekyawaung-tech/pwa-app',
    ),
    ProjectModel(
      title: 'Game Collection',
      description: 'Arcade-style collection of interactive games with playful visuals.',
      tags: ['Games', 'UI', 'Entertainment'],
      demoUrl: 'https://moekyaw.lovable.app',
      sourceUrl: 'https://github.com/moekyawaung-tech/game-collection',
    ),
    ProjectModel(
      title: 'Job Portal App',
      description: 'Recruitment and listing flow with polished filters and user journeys.',
      tags: ['Jobs', 'Listings', 'Search'],
      demoUrl: 'https://moekyaw.lovable.app',
      sourceUrl: 'https://github.com/moekyawaung-tech/Job-Portal-App',
    ),
    ProjectModel(
      title: 'POS Ultimate Pro Max',
      description: 'Advanced point-of-sale system with business-focused workflows.',
      tags: ['POS', 'Business', 'Enterprise'],
      demoUrl: 'https://moekyaw.lovable.app',
      sourceUrl: 'https://github.com/moekyawaung-tech/POS-Ultimate-Pro-Max',
    ),
    ProjectModel(
      title: 'Video Player',
      description: 'Media playback with custom controls and streaming support.',
      tags: ['Media', 'Player', 'Mobile'],
      demoUrl: 'https://moekyaw.lovable.app',
      sourceUrl: 'https://github.com/moekyawaung-tech/video-player',
    ),
  ];

  static const List<ServiceModel> services = [
    ServiceModel(
      title: 'Flutter Development',
      description: 'Premium cross-platform apps with polished UI and maintainable architecture.',
      icon: 'flutter',
    ),
    ServiceModel(
      title: 'Android Engineering',
      description: 'Senior Kotlin, Jetpack Compose, MVVM, and Clean Architecture solutions.',
      icon: 'android',
    ),
    ServiceModel(
      title: 'UI / Motion Design',
      description: 'Neon interfaces, motion systems, and visually distinct cyber aesthetics.',
      icon: 'animation',
    ),
    ServiceModel(
      title: 'API Integration',
      description: 'Firebase, REST APIs, secure auth flows, and real-time data sync.',
      icon: 'cloud_sync',
    ),
    ServiceModel(
      title: 'AI / ML Features',
      description: 'Claude API, TFLite, and on-device intelligence for smarter apps.',
      icon: 'smart_toy',
    ),
    ServiceModel(
      title: 'Security / Audits',
      description: 'Security-minded development, hardening, and app review support.',
      icon: 'security',
    ),
  ];

  static const List<AppModel> apps = [
    AppModel(name: '1. Social Dashboard', subtitle: 'Analytics-rich dashboard', category: 'Dashboard'),
    AppModel(name: '2. PWA App', subtitle: 'Installable web app', category: 'Web'),
    AppModel(name: '3. Admin Dashboard', subtitle: 'Management console', category: 'Dashboard'),
    AppModel(name: '4. Stock Market', subtitle: 'Real-time finance data', category: 'Finance'),
    AppModel(name: '5. Game Collection', subtitle: 'Arcade games suite', category: 'Game'),
    AppModel(name: '6. Music Player', subtitle: 'Audio streaming app', category: 'Media'),
    AppModel(name: '7. Chat App', subtitle: 'Real-time messenger', category: 'Social'),
    AppModel(name: '8. World Cup', subtitle: 'Football scores & fixtures', category: 'Sports'),
    AppModel(name: '9. E-commerce', subtitle: 'Shopping platform', category: 'Commerce'),
    AppModel(name: '10. Portfolio', subtitle: 'Personal portfolio app', category: 'Portfolio'),
    AppModel(name: '11. Money Tracker', subtitle: 'Finance management', category: 'Finance'),
    AppModel(name: '12. Weather', subtitle: 'Forecast & alerts', category: 'Utility'),
    AppModel(name: '13. Crypto', subtitle: 'Crypto tracker', category: 'Finance'),
    AppModel(name: '14. Todo', subtitle: 'Task manager', category: 'Productivity'),
    AppModel(name: '15. Video Player', subtitle: 'Media player', category: 'Media'),
    AppModel(name: '16. LEGEND!', subtitle: 'Flagship app', category: 'Special'),
  ];

  static const List<SocialLinkModel> socialLinks = [
    SocialLinkModel(label: 'GitHub', url: 'https://github.com/Dev-moe-kyawaung', icon: 'code'),
    SocialLinkModel(label: 'LinkedIn', url: 'https://www.linkedin.com/in/moe-kyaw-aung-2653093a1', icon: 'work'),
    SocialLinkModel(label: 'YouTube', url: 'https://www.youtube.com/channel/UCuTXUguZb4xjeL2nX8WJG', icon: 'play_circle_fill'),
    SocialLinkModel(label: 'Gravatar', url: 'https://gravatar.com/moekyawaung2026', icon: 'account_circle'),
    SocialLinkModel(label: 'Tumblr', url: 'https://www.tumblr.com/moekyawaung', icon: 'tumblr'),
    SocialLinkModel(label: 'Flickr', url: 'https://www.flickr.com/people/204037451@N06', icon: 'flickr'),
    SocialLinkModel(label: 'Vimeo', url: 'https://vimeo.com/user252414232', icon: 'vimeo'),
    SocialLinkModel(label: 'Bluesky', url: 'https://bsky.app/profile/moekyawaung96.bsky.social', icon: 'bluesky'),
  ];
}
