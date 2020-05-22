import 'dart:convert';

import 'package:githubInfo/components/RepositoryModel.dart';
import 'package:http/http.dart';

class githubAccess {
  final String _github = "https://api.github.com/users/charitarthchugh/repos";
 
  //https://developer.github.com/v3/users/
  // ignore: missing_return
  Future<List<Repository>> getRepos() async {
    Response res =await get(_github);
    try{ 
      List<dynamic> body = jsonDecode(res.body);
      List<Repository> repos =
          body.map((dynamic item) => Repository.fromJson(item)).toList();
      return repos;
    } catch(err){
      throw err.toString();
    }

  }
}
