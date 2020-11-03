import 'package:flutter/material.dart';
import 'package:nescap/capsule_data/capsule_data_schema.dart';

class CapsuleDetails extends StatelessWidget {
  final CapsuleData data;

  CapsuleDetails({Key key, @required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: 200,
        height: 200,
        color: Colors.red,
        child: Column(
          children: [
            Text('Hello World 2'),
            Text(data.story),
          ],
        ),
      ),
    );
  }
}
