import 'package:flutter/material.dart';
import 'package:flutter_30daychalange/pages/homePage.dart';
import 'package:flutter_30daychalange/pages/login.dart';
import 'package:flutter_30daychalange/widget/theme.dart';
// import 'package:google_fonts/google_fonts.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Mytheme.lightTheme(context),
      initialRoute: "/home",
      routes: {
        '/': (context) => LoginScreen(),
        '/home': (context) => HomePage(),
        '/login': (context) => LoginScreen(),
      },
    );
  }
}
