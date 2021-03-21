import 'package:capsule/main.dart';
import 'package:capsule/modules/BottomNavigation/BottomNavigationModule.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({Key key, this.currentTab, this.onSelectTab})
      : super(key: key);

  final Object currentTab;
  final Function onSelectTab;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationModule();
  }
}
