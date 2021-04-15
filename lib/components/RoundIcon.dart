import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class RoundIcon extends StatelessWidget {
  const RoundIcon({Key key, this.image, this.size, this.backgroundColor})
      : super(key: key);

  final Widget image;
  final double size;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(size),
          color: backgroundColor,
        ),
        child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0), child: image),
      ),
    );
  }
}
