import 'package:flutter/material.dart';
import 'package:nescap/application_state/nescap_logic.dart';
import 'package:nescap/theme/nescap_theme.dart';
import 'package:provider/provider.dart';

class CapsuleSearchCupSize extends StatelessWidget {
  const CapsuleSearchCupSize({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var logic = Provider.of<NesCapLogic>(context);

    return Visibility(
      visible: logic.filterOptions.filterCupSizes,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 16.0),
          Text('Cup sizes', style: Theme.of(context).textTheme.subtitle2),
          Wrap(
            spacing: 8.0,
            runSpacing: 4.0,
            alignment: WrapAlignment.start,
            children: [
              FilterChip(
                showCheckmark: false,
                avatar: Image.asset('images/cupsize/ristretto.png', width: 25),
                label: Text('Ristretto'),
                selectedColor: NesCapTheme.selectedColour,
                selected: logic.filterOptions.cupSizes.ristretto,
                onSelected: (value) {
                  logic.setFilterRistretto(value);
                },
              ),
              FilterChip(
                showCheckmark: false,
                avatar: Image.asset('images/cupsize/espresso.png', width: 25),
                label: Text('Espresso'),
                selectedColor: NesCapTheme.selectedColour,
                selected: logic.filterOptions.cupSizes.espresso,
                onSelected: (value) {
                  logic.setFilterEspresso(value);
                },
              ),
              FilterChip(
                showCheckmark: false,
                avatar: Image.asset('images/cupsize/lungo.png', width: 25),
                label: Text('Lungo'),
                selectedColor: NesCapTheme.selectedColour,
                selected: logic.filterOptions.cupSizes.lungo,
                onSelected: (value) {
                  logic.setFilterLungo(value);
                },
              ),
              FilterChip(
                showCheckmark: false,
                avatar: Image.asset('images/cupsize/milk.png', width: 25),
                label: Text('Milk'),
                selectedColor: NesCapTheme.selectedColour,
                selected: logic.filterOptions.cupSizes.milk,
                onSelected: (value) {
                  logic.setFilterMilk(value);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
