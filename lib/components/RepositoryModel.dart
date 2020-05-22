import 'package:flutter/foundation.dart';

class Repository {
  final String name;
  final String info;
  final int stars;
  final int commits;
  final int releases;

  Repository({
      @required this.name,
      @required this.info,
      @required this.stars,
      @required this.commits,
      @required this.releases});
  
}
