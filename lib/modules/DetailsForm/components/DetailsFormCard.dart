import 'package:capsule/components/RoundIcon.dart';
import 'package:capsule/utils/custom_icons_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailsFormCard extends StatelessWidget {
  const DetailsFormCard(
      {Key key,
      this.label,
      this.selectedImage,
      this.defaultImage,
      this.background,
      this.onTap})
      : super(key: key);

  final String label;
  final Widget selectedImage;
  final Widget defaultImage;
  final Object background;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          gradient: LinearGradient(
            colors: [Colors.blue[700], Colors.blue[800]],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          color: selectedImage != null ? null : Color(0x11ffffff),
          image: background != null
              ? DecorationImage(
                  image: background,
                  fit: BoxFit.contain,
                )
              : null,
        ),
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                height: 1.5,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Opacity(
                  opacity: selectedImage != null ? 1 : 0.5,
                  child: selectedImage != null ? selectedImage : defaultImage,
                ),
                RoundIcon(
                  image: selectedImage != null
                      ? Icon(CustomIcons.cross)
                      : Icon(CustomIcons.plus),
                  backgroundColor: Color(0x33ffffff),
                  size: 27,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
