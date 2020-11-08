import 'package:flutter/material.dart';
import 'package:nescap/application_state/nescap_logic.dart';
import 'package:nescap/theme/nescap_theme.dart';
import 'package:provider/provider.dart';

class CapsuleSearchCaffeineContent extends StatelessWidget {
  const CapsuleSearchCaffeineContent({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var logic = Provider.of<NesCapLogic>(context);

    return Visibility(
      visible: logic.filterOptions.filterCaffeineContent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 16.0),
          Text('Caffeine content',
              style: Theme.of(context).textTheme.subtitle2),
          Wrap(
            spacing: 8.0,
            runSpacing: 4.0,
            alignment: WrapAlignment.start,
            children: [
              FilterChip(
                showCheckmark: false,
                avatar: Icon(
                  Icons.circle,
                  color: (Colors.grey.shade900),
                ),
                label: Text('Caffeine'),
                selectedColor: NesCapTheme.selectedColour,
                selected: logic.filterOptions.caffeineContent.caffeine,
                onSelected: (value) {
                  logic.setFilterCaffeine(value);
                },
              ),
              FilterChip(
                avatar: Icon(
                  Icons.circle,
                  color: (Colors.red.shade900),
                ),
                showCheckmark: false,
                label: Text('Decaf'),
                selectedColor: NesCapTheme.selectedColour,
                selected: logic.filterOptions.caffeineContent.decaf,
                onSelected: (value) {
                  logic.setFilterDecaf(value);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
