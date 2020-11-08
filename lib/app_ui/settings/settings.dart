
import 'package:flutter/material.dart';
import 'package:nescap/application_state/nescap_logic.dart';

class Settings extends StatelessWidget {
  const Settings({
    Key key,
    @required this.logic,
  }) : super(key: key);

  final NesCapLogic logic;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<ResultsLayout>(
      onSelected: (ResultsLayout result) {
        logic.setResultsLayout(result);
      },
      child: Row(children: [
        Icon(Icons.settings),
        SizedBox(width: 4.0),
        Text('Layout settings'),
        SizedBox(width: 2.0)
      ]),
      itemBuilder: (BuildContext context) {
        return [
          PopupMenuItem<ResultsLayout>(
            value: ResultsLayout.BestSuitedToConstraints,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.auto_awesome_mosaic),
                SizedBox(width: 4.0),
                Text('Auto'),
              ],
            ),
          ),
          PopupMenuItem<ResultsLayout>(
            value: ResultsLayout.DataSheet,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.view_column),
                SizedBox(width: 4.0),
                Text('Data sheet'),
              ],
            ),
          ),
          PopupMenuItem<ResultsLayout>(
            value: ResultsLayout.GridOfCapsules,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.grid_view),
                SizedBox(width: 4.0),
                Text('Grid of capsules'),
              ],
            ),
          ),
        ];
      },
    );
  }
}