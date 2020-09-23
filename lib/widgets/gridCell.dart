import 'package:flutter/material.dart';

class GridCell extends StatelessWidget {
  final Widget child;
  final double height;
  final double width;
  final bool title;

  GridCell({
    Key key,
    this.child,
    this.width = 250,
    this.height = 60,
    this.title = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: title ? Colors.grey.shade900 : Colors.grey[850],
        border: Border(
          right: BorderSide(
            color: Colors.grey.shade800,
            width: 1,
          ),
          bottom: BorderSide(
            color: Colors.grey.shade800,
            width: 1,
          ),
        ),
      ),
      padding: EdgeInsets.all(16.0),
      alignment: Alignment.centerLeft,
      child: child,
    );
  }
}
