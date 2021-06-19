import "package:flutter/material.dart";
import 'package:hello_world_1/models/catelog.dart';
import 'package:hello_world_1/widgets/drawer.dart';
import 'package:hello_world_1/widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  int Day = 2;
  String tex = "Harsh Katrodiya";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Demo App",
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView.builder(
          itemCount: Catalogmodel.items.length,
          itemBuilder: (context, index) {
            return Itemwedget(
              item: Catalogmodel.items[index],
            );
          },
        ),
      ),
      drawer: Mydrawer(),
    );
  }
}
