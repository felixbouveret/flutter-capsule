import 'package:capsule/modules/Home/HomeModule.dart';
import 'package:flutter/material.dart';

class ParamsPage extends StatelessWidget {
  ParamsPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: [
        Text('Params'),
        ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Home'))
      ]),
    );
  }
}
