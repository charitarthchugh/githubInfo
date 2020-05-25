import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:github/github.dart';
import 'package:http/http.dart';

class githubAccess {
  // Repository
  // Future()<List<RepositoryModel>> getRepos() async {
  //   var gh=GitHub();
  //   try{
  //     List<Repository> repos =
  //         body.map((dynamic item) => Repository.fromJson(item)).toList();
  //     return repos;
  //   } catch(err){
  //     throw err.toString();
  //   }

  // }
  Future<List<Repository>> getRepos() async {
    List<Repository> repos;
    try {
      Response res =
          await get("https://api.github.com/users/charitarthchugh/repos");
      repos = jsonDecode(res.body)
          .map((dynamic item) => Repository.fromJson(item))
          .toList();
    } catch (err) {
      throw err.toString();
    }
    return repos;
  }
  }

