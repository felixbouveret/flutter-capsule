import 'package:capsule/pages/Home.dart';
import 'package:capsule/pages/Params.dart';
import 'package:flutter/material.dart';

import '../main.dart';

class DirtyRouter extends StatelessWidget {
  const DirtyRouter({Key key, this.currentTab}) : super(key: key);

  final Object currentTab;

  @override
  Widget build(BuildContext context) {
    return currentTab == TabItem.home
        ? MyHomePage()
        : currentTab == TabItem.settings
            ? ParamsPage()
            : Container();
  }
}
