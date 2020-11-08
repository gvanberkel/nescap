import 'package:flutter/material.dart';
import 'package:nescap/application_state/nescap_logic.dart';
import 'package:nescap/theme/nescap_theme.dart';
import 'package:provider/provider.dart';

class CapsuleSearchHighLevelFilters extends StatelessWidget {
  const CapsuleSearchHighLevelFilters({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var logic = Provider.of<NesCapLogic>(context);

    return Wrap(
      spacing: 8.0,
      runSpacing: 8.0,
      children: [
        FilterChip(
          label: Text('Filter Caffeine'),
          selectedColor: NesCapTheme.selectedColour,
          selected: logic.filterOptions.filterCaffeineContent,
          onSelected: (value) {
            logic.setFilterCaffeineContent(value);
          },
        ),
        FilterChip(
          label: Text('Filter Cup size'),
          selected: logic.filterOptions.filterCupSizes,
          selectedColor: NesCapTheme.selectedColour,
          onSelected: (value) {
            logic.setFilterCupSizes(value);
          },
        ),
        FilterChip(
          label: Text('Filter Intensity'),
          selected: logic.filterOptions.filterStrengths,
          selectedColor: NesCapTheme.selectedColour,
          onSelected: (value) {
            logic.setFilterStrengths(value);
          },
        ),
      ],
    );
  }
}
