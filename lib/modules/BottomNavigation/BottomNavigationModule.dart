import 'package:capsule/main.dart';
import 'package:capsule/modules/BottomNavigation/components/BottomNavigationItem.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavigationModule extends StatelessWidget {
  const BottomNavigationModule({Key key, this.currentTab, this.onSelectTab})
      : super(key: key);

  final Object currentTab;
  final Function onSelectTab;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 24),
      color: Colors.black,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          BottomNavigationItem(
            currentTab: currentTab,
            itemTab: TabItem.home,
            icon: Icon(Icons.home),
            label: 'Home',
            onTap: (TabItem tabItem) {
              onSelectTab(TabItem.home);
            },
          ),
          BottomNavigationItem(
            currentTab: currentTab,
            itemTab: TabItem.settings,
            icon: Icon(Icons.settings),
            label: 'Params',
            onTap: (TabItem tabItem) {
              onSelectTab(TabItem.settings);
            },
          )
        ],
      ),
    );
  }
}
