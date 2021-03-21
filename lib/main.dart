import 'package:capsule/router/DirtyRouter.dart';
import 'package:flutter/material.dart';

import 'modules/BottomNavigation/BottomNavigationModule.dart';

void main() {
  runApp(App());
}

enum TabItem { home, settings }

class App extends StatefulWidget {
  App({Key key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  TabItem currentTab = TabItem.home;

  void _selectTab(TabItem tabItem) {
    print(currentTab);
    setState(() {
      currentTab = tabItem;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primaryColor: Colors.blue[900],
          accentColor: Colors.purple[500],
          brightness: Brightness.dark),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
        ),
        body: DirtyRouter(
          currentTab: currentTab,
        ),
        bottomNavigationBar: BottomNavigationModule(
          currentTab: currentTab,
          onSelectTab: _selectTab,
        ),
      ),
    );
  }
}
