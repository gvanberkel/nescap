import 'package:flutter/material.dart';
import 'package:nescap/state/nescap_logic.dart';

class FiltersWidget extends StatelessWidget {
  final NesCapLogic logic;

  FiltersWidget({Key key, this.logic}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      width: 300,
      height: 300,
      decoration: BoxDecoration(
        color: Theme.of(context).backgroundColor,
        borderRadius: BorderRadius.all(
          Radius.circular(8.0),
        ),
      ),
      child: Column(
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search coffee capsules',
                border: const OutlineInputBorder(),
              ),
              controller:
                  TextEditingController(text: logic.filterOptions.freeText),
              onChanged: (value) {
                logic.filterOptions.freeText = value;
              },
            ),
          ),
          TextButton(
            onPressed: () {
              logic.filterData();
            },
            child: Text('Search'),
          )
        ],
      ),
    );
  }
}
