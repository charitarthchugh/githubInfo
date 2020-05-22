//External Dependencies
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//Internal Dependencies
import 'views/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Charitarth Chugh's Github Projects",
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
        primarySwatch: Colors.white10,
        textTheme: TextTheme(
            subtitle2: GoogleFonts.openSans(
                color: Colors.white70,
                fontWeight: FontWeight.normal,
                fontSize: 18),
            headline6: GoogleFonts.poppins(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 32)),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}
