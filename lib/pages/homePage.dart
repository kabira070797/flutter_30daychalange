import 'package:flutter/material.dart';
import 'package:flutter_30daychalange/widget/drawer.dart';

//we learn about context and constraint and Build trees- Element trees- Render trees

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
          child: Container(
        child: Text("Home Screen"),
      )),
      drawer: MyDrawer(),
    );
  }
}
