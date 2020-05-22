import 'dart:convert';

import 'package:githubInfo/components/RepositoryModel.dart';
import 'package:http/http.dart';

class githubAccess {
  final String github= "https://api.github.com/users/charitarthchugh/repos";
//https://developer.github.com/v3/users/
  Future<List<Repository>> getRepos() async {
    Response res=await get(github);
    if (res.statusCode==200) {
        List<dynamic> body= jsonDecode(res.body);

//        List<Repository> repo= body.map((dynamic item) => Repository.fromJSON(item));
    }
    else
      print("Could not fetch.");
  }
}
