import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:nescap/app_ui/capsule_datasheet/cup_size_widget.dart';
import 'package:nescap/app_ui/capsule_datasheet/capsule_datasheet_data.dart';
import 'package:nescap/capsule_data/capsule_data_schema.dart';
import 'package:nescap/ui_components/value_bar.dart';

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
          Divider(),
          ListTile(
            title: Text('Caffeine Content'),
            trailing: Icon(
              Icons.circle,
              color:
              (data.caffeine ? Colors.grey.shade900 : Colors.red.shade900),
            ),
          ),
          Divider(
            indent: 16,
            endIndent: 16,
            height: 2,
          ),
          ListTile(
            title: Text('Cup Size'),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 15.0, 0, 0),
                  child:CupSizeWidget(
                    capsule: data,
                    showLabels: false,
                  ),
                )
              ],
            ),
          ),
          Divider(
            indent: 16,
            endIndent: 16,
            height: 2,
          ),
          ListTile(
              title: Text('Grams per 10 pack'),
              trailing: Text('${data.gramsPer10Pack.toInt()}g')
          ),
          Divider(
            indent: 16,
            endIndent: 16,
            height: 2,
          ),
          ListTile(
              title: Text('Price'),
              trailing: Text(data.price.toString())
          ),
          Divider(
            indent: 16,
            endIndent: 16,
            height: 2,
          ),
          ListTile(
            title: Text('Intensity'),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                ValueBar(
                  maxValue: 13,
                  value: data.flavourProfile.intensity,
                )
              ],
            ),
          ),
          Divider(
            indent: 16,
            endIndent: 16,
            height: 2,
          ),
          ListTile(
            title: Text('Acidity'),
            trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ValueBar(
                    maxValue: 5,
                    value: data.flavourProfile.acidity,
                  )
                ]),
          ),
          Divider(
            indent: 16,
            endIndent: 16,
            height: 2,
          ),
          ListTile(
            title: Text('Bitterness'),
            trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ValueBar(
                    maxValue: 5,
                    value: data.flavourProfile.acidity,
                  )
                ]),
          ),
          Divider(
            indent: 16,
            endIndent: 16,
            height: 2,
          ),
          ListTile(
            title: Text('Body'),
            trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ValueBar(
                    maxValue: 5,
                    value: data.flavourProfile.body,
                  )
                ]),
          ),
          Divider(
            indent: 16,
            endIndent: 16,
            height: 2,
          ),
          ListTile(
            title: Text('Roasting'),
            trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ValueBar(
                    maxValue: 5,
                    value: data.flavourProfile.roasting,
                  )
                ]),
          ),
          Divider(),
          Padding(
            child: Column(
              children: descriptionTextWidgetList(data),
            ),
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
          )

        ],
      ),
    );
  }
}
