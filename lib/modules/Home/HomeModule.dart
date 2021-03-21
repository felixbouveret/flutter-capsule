import 'package:capsule/components/Wrapper.dart';
import 'package:capsule/modules/Home/components/Details.dart';
import 'package:capsule/modules/Home/components/feelings.dart';
import 'package:flutter/material.dart';

class HomeModule extends StatelessWidget {
  HomeModule({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Wrapper(
          child: Container(
            margin: EdgeInsets.only(bottom: 32),
            child: Text(
              'How are you feeling today?',
              style: TextStyle(fontSize: 24),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Feelings(),
        Details()
      ],
    );
  }
}
