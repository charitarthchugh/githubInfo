//External
import 'package:flutter/material.dart';
import 'package:github/github.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart';
import 'dart:convert';
//Internal
import 'package:githubInfo/components/githubAccess.dart';
//import 'package:githubInfo/models/RepositoryModel.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  Widget ShowRepos() {

  }

  @override
  void initState() async {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Repos"),
      ),
      body: ListView(
        children: [
          SizedBox(height: 80,),
          Center(child: Text("Charitarth Chugh's\nGithub Repositories",
            style: GoogleFonts.poppins(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.5),),),
          SizedBox(height: 15.0,),
          ShowRepos(),
        ],
      ),
    );
  }

}
