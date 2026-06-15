class SocialLinkModel {
  final String label;
  final String url;
  final String icon;

  const SocialLinkModel({
    required this.label,
    required this.url,
    required this.icon,
  });

  factory SocialLinkModel.fromJson(Map<String, dynamic> json) {
    return SocialLinkModel(
      label: json['label'] as String,
      url: json['url'] as String,
      icon: json['icon'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'label': label,
      'url': url,
      'icon': icon,
    };
  }
}
