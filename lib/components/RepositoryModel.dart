import "package:flutter/cupertino.dart";
import "package:flutter/foundation.dart";
import "";

class Repository {
  final String name;
  final String description;
  final String homepage;
  final String language;
  final String githubUrl;
  final String license;

  Repository(
      {@required this.name,
      @required this.description,
      @required this.githubUrl,
      this.homepage,
      this.language,
      this.license});

  factory Repository.fromJson(Map<String, dynamic> json) {
    return Repository(
        name: json["name"] as String,
        githubUrl: json["url"] as String,
        description: json["description"] as String,
        homepage: json["homepage"] as String,
        language: json["language"] as String);
  }
}
