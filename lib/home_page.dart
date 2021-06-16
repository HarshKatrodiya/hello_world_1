import "package:flutter/material.dart";

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo App"),
      ),
      body:Center(
        child: Container(
          child: Text("Welcome To First App 30"),
        ),
      ),
      drawer: Drawer()  ,
    );
  }
}
