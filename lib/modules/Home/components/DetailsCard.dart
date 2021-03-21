import 'package:flutter/cupertino.dart';

class DetailsCard extends StatelessWidget {
  const DetailsCard(
      {Key key, this.backgroundColor, this.image, this.label, this.remove})
      : super(key: key);

  final Object backgroundColor;
  final Object image;
  final String label;
  final Function remove;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('e'),
    );
  }
}
