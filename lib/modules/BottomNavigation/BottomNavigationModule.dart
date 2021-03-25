import 'package:capsule/main.dart';
import 'package:capsule/modules/BottomNavigation/components/BottomNavigationItem.dart';
import 'package:capsule/utils/custom_icons_icons.dart';
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
      margin: EdgeInsets.only(top: 12),
      padding: EdgeInsets.only(top: 19, bottom: 16, left: 32, right: 32),
      decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          BottomNavigationItem(
            currentTab: currentTab,
            itemTab: TabItem.home,
            icon: CustomIcons.icn_home,
            label: 'Home',
            onTap: (TabItem tabItem) {
              onSelectTab(TabItem.home);
            },
          ),
          BottomNavigationItem(
            currentTab: currentTab,
            itemTab: TabItem.playlist,
            icon: CustomIcons.icn_music,
            label: 'Playlist',
            onTap: (TabItem tabItem) {
              onSelectTab(TabItem.playlist);
            },
          ),
          BottomNavigationItem(
            currentTab: currentTab,
            itemTab: TabItem.profile,
            icon: CustomIcons.icn_profile,
            label: 'Profile',
            onTap: (TabItem tabItem) {
              onSelectTab(TabItem.profile);
            },
          ),
          BottomNavigationItem(
            currentTab: currentTab,
            itemTab: TabItem.settings,
            icon: CustomIcons.icn_settings,
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
