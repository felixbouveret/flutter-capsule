import 'package:capsule/utils/custom_icons_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailsCard extends StatelessWidget {
  const DetailsCard(
      {Key key, this.colors, this.image, this.label, this.id, this.remove})
      : super(key: key);

  final Object colors;
  final Widget image;
  final String label;
  final String id;
  final Function remove;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          gradient: LinearGradient(
            colors: colors,
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  padding: EdgeInsets.only(left: 20, top: 24), child: image),
              InkWell(
                onTap: () {
                  remove();
                },
                child: Container(
                    padding: EdgeInsets.only(right: 16, top: 16),
                    child: Icon(CustomIcons.cross)),
              )
            ],
          ),
          Container(
            padding: EdgeInsets.only(left: 20, right: 20, bottom: 24),
            child: Text(
              label,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
            ),
          )
        ],
      ),
    );
  }
}
