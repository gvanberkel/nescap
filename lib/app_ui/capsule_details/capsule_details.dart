import 'package:flutter/material.dart';
import 'package:nescap/app_ui/capsule_datasheet/capsule_datasheet_data.dart';
import 'package:nescap/app_ui/capsule_datasheet/cup_size_widget.dart';
import 'package:nescap/capsule_data/capsule_data_schema.dart';

class CapsuleDetails extends StatelessWidget {
  final CapsuleData data;

  CapsuleDetails({Key key, @required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(data.name),
        leading: IconButton(
          icon: Icon(Icons.close),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Name'),
            trailing: Text(data.name),
          ),
          ListTile(
            title: Text('Caffeine Content'),
            trailing: Icon(
              Icons.circle,
              color:
                  (data.caffeine ? Colors.grey.shade900 : Colors.red.shade900),
            ),
          ),
          ListTile(
            title: Text('Cup Size'),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                CupSizeWidget(
                  capsule: data,
                  showLabels: false,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
