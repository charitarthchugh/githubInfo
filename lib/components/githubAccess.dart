import 'package:flutter/material.dart';
import 'package:github/github.dart';

Future<void> main() async {
  /* Create a GitHub Client, with anonymous authentication by default */
  var github = GitHub();
  User cc =await github.users.getUser("charitarthchugh");
  Repository repo = await github.repositories.getRepository(RepositorySlug('user_or_org', 'repo_name'));
  /* Do Something with repo */
}