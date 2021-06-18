import "package:flutter/material.dart";
import 'package:hello_world_1/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  int Day = 2;
  String tex = "Harsh Katrodiya";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo App"),
      ),
      body: Center(
        child: Container(
          child: Text("Hello My name is $tex and my day is $Day"),
        ),
      ),
      drawer: Mydrawer(),
    );
  }
}
