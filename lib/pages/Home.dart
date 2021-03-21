import 'package:capsule/modules/Home/HomeModule.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title, this.onPush}) : super(key: key);

  final String title;
  final ValueChanged onPush;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeModule(),
    );
  }
}
