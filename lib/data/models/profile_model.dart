class ProfileModel {
  final String name;
  final String role;
  final String location;
  final String? avatarUrl;
  final List<String> languages;

  const ProfileModel({
    required this.name,
    required this.role,
    required this.location,
    this.avatarUrl,
    this.languages = const [],
  });

  factory ProfileModel.fromJson(Map<String, dynamic> json) {
    return ProfileModel(
      name: json['name'] as String,
      role: json['role'] as String,
      location: json['location'] as String,
      avatarUrl: json['avatarUrl'] as String?,
      languages: (json['languages'] as List?)?.cast<String>() ?? const [],
    );
  }
}
