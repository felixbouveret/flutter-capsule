import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Feelings extends StatefulWidget {
  Feelings({Key key}) : super(key: key);

  @override
  _FeelingsState createState() => _FeelingsState();
}

class _FeelingsState extends State<Feelings> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Image.asset('assets/images/samples/moodPlaceholder.png'),
    );
  }
}
