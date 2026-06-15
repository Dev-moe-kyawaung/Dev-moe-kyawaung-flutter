class AppModel {
  final String name;
  final String subtitle;
  final String? iconUrl;
  final String? storeUrl;
  final String category;

  const AppModel({
    required this.name,
    required this.subtitle,
    this.iconUrl,
    this.storeUrl,
    this.category = 'App',
  });

  factory AppModel.fromJson(Map<String, dynamic> json) {
    return AppModel(
      name: json['name'] as String,
      subtitle: json['subtitle'] as String,
      iconUrl: json['iconUrl'] as String?,
      storeUrl: json['storeUrl'] as String?,
      category: json['category'] as String? ?? 'App',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'subtitle': subtitle,
      'iconUrl': iconUrl,
      'storeUrl': storeUrl,
      'category': category,
    };
  }
}
