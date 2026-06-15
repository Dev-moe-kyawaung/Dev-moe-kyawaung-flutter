class ProjectModel {
  final String title;
  final String description;
  final List<String> tags;
  final String demoUrl;
  final String sourceUrl;
  final String? imageUrl;

  const ProjectModel({
    required this.title,
    required this.description,
    required this.tags,
    this.demoUrl = '',
    this.sourceUrl = '',
    this.imageUrl,
  });

  factory ProjectModel.fromJson(Map<String, dynamic> json) {
    return ProjectModel(
      title: json['title'] as String,
      description: json['description'] as String,
      tags: (json['tags'] as List).cast<String>(),
      demoUrl: json['demoUrl'] as String? ?? '',
      sourceUrl: json['sourceUrl'] as String? ?? '',
      imageUrl: json['imageUrl'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'description': description,
      'tags': tags,
      'demoUrl': demoUrl,
      'sourceUrl': sourceUrl,
      'imageUrl': imageUrl,
    };
  }
}
