import 'package:flutter/cupertino.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key key, this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: child,
    );
  }
}
