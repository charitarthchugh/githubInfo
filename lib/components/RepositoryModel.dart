import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import '';

class Repository {
  final String name;
  final String description;
  final String homepage;
  final String language;
  final String githubUrl;

  Repository({@required this.name, @required this.description, @required this.homepage,this.language,this.githubUrl});

  factory Repository.fromJson(Map<String, dynamic> json) {
    return Repository(
        name: json['name'],
        homepage: json['url'],
        description: json['description'],
        language: json);
  }
}
