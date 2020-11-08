import 'package:flutter/material.dart';
import 'package:nescap/application_state/nescap_logic.dart';
import 'package:nescap/theme/nescap_theme.dart';
import 'package:provider/provider.dart';

class CapsuleSearchStrength extends StatelessWidget {
  const CapsuleSearchStrength({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var logic = Provider.of<NesCapLogic>(context);

    return Visibility(
      visible: logic.filterOptions.filterStrengths,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 16.0),
          Text('Coffee intensities',
              style: Theme.of(context).textTheme.subtitle2),
          Wrap(
            spacing: 8.0,
            runSpacing: 4.0,
            alignment: WrapAlignment.start,
            children: [
              FilterChip(
                label: Text('Light (1 to 7)'),
                selected: logic.filterOptions.strengths.light,
                selectedColor: NesCapTheme.selectedColour,
                onSelected: (value) {
                  logic.setFilterLightStrength(value);
                },
              ),
              FilterChip(
                label: Text('Intense (8 to 13)'),
                selected: logic.filterOptions.strengths.itense,
                selectedColor: NesCapTheme.selectedColour,
                onSelected: (value) {
                  logic.setFilterIntenseStrength(value);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
