import 'package:capsule/modules/Home/HomeModule.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: HomeModule(),
        floatingActionButton: FloatingActionButton(
          tooltip: 'Increment',
          onPressed: () {},
          child: Icon(Icons.add),
        ));
  }
}
