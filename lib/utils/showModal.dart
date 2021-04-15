import 'package:flutter/material.dart';

import 'custom_icons_icons.dart';

Future showModal(context, child, title) {
  return showModalBottomSheet(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(25.0)),
      ),
      backgroundColor: Color(0xff19181E),
      context: context,
      elevation: double.infinity,
      useRootNavigator: true,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return Container(
          height: double.infinity,
          padding: EdgeInsets.only(top: 64, left: 24, right: 24),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 40),
                child: Stack(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        CustomIcons.arrow_left,
                        color: Colors.white,
                      ),
                    ),
                    Center(
                        child: Text(
                      title,
                      style: TextStyle(color: Colors.white),
                    )),
                  ],
                ),
              ),
              Expanded(
                child: ListView(
                  children: [child],
                ),
              ),
            ],
          ),
        );
      });
}
