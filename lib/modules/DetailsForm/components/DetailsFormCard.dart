import 'package:capsule/components/RoundIcon.dart';
import 'package:capsule/utils/custom_icons_icons.dart';
import 'package:flutter/cupertino.dart';

class DetailsFormCard extends StatelessWidget {
  const DetailsFormCard({Key key, this.label, this.image, this.background})
      : super(key: key);

  final String label;
  final Widget image;
  final Object background;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Color(0x11ffffff),
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
                opacity: 0.5,
                child: image,
              ),
              RoundIcon(
                image: Icon(CustomIcons.plus),
                backgroundColor: Color(0x33ffffff),
                size: 27,
              ),
            ],
          )
        ],
      ),
    );
  }
}
