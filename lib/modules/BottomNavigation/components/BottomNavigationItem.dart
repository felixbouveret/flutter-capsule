import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavigationItem extends StatelessWidget {
  const BottomNavigationItem(
      {Key key,
      this.currentTab,
      this.itemTab,
      this.label,
      this.icon,
      this.onTap})
      : super(key: key);

  final Object currentTab;
  final Object itemTab;
  final String label;
  final Object icon;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: currentTab == itemTab
            ? BoxDecoration(
                borderRadius: BorderRadius.circular(32),
                color: Colors.grey[800],
              )
            : null,
        child: InkWell(
          onTap: () {
            onTap(itemTab);
          },
          child: Row(
            children: [
              Icon(
                icon,
                color: currentTab == itemTab ? Colors.white : Colors.grey[800],
              ),
              currentTab == itemTab
                  ? Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Text(
                        label,
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                    )
                  : Text('')
            ],
          ),
        ),
      ),
    );
  }
}
