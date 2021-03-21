import 'package:capsule/components/RoundIcon.dart';
import 'package:capsule/utils/custom_icons_icons.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailsCardPlaceholder extends StatelessWidget {
  const DetailsCardPlaceholder({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      borderType: BorderType.RRect,
      radius: Radius.circular(8),
      color: Colors.white.withOpacity(0.1),
      strokeWidth: 2,
      dashPattern: [5, 5],
      child: Container(
        padding: EdgeInsets.all(16),
        width: 160,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RoundIcon(
              size: 32,
              backgroundColor: Colors.white.withOpacity(.1),
              image: Icon(
                CustomIcons.faq,
                color: Colors.white,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 12),
              child: Text(
                'Why options?',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 4),
              child: Text(
                'Little details can influence what you want to listen',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 13, color: Colors.white60),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
