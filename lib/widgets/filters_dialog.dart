import 'package:flutter/material.dart';
import 'package:nescap/state/nescap_logic.dart';

class FiltersDialog extends StatelessWidget {
  final NesCapLogic logic;

  FiltersDialog({Key key, this.logic}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      width: 535,
      height: 400,
      decoration: BoxDecoration(
        color: Theme.of(context).dialogBackgroundColor,
        borderRadius: BorderRadius.all(
          Radius.circular(8.0),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            blurRadius: 20.0,
          )
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 16,
            ),
            Text(
              'Explore capsules',
              style: Theme.of(context).textTheme.headline3,
            ),
            SizedBox(
              height: 16,
            ),
            freeText(),
            SizedBox(
              height: 8,
            ),
            caffeine(),
            cupSize(),
            strength(),
            Spacer(
              flex: 1,
            ),
            searchButton()
          ],
        ),
      ),
    );
  }

  Widget searchButton() {
    var capsulesString =
        logic.projectedResultsCount == 1 ? 'capsule' : 'capules';

    return OutlineButton(
      onPressed: () {
        logic.filterData();
      },
      child: Text(
          'Show ${logic.projectedResultsCount} $capsulesString'.toUpperCase()),
    );
  }

  Wrap strength() {
    return Wrap(
      spacing: 8.0,
      runSpacing: 4.0,
      alignment: WrapAlignment.start,
      children: [
        ChoiceChip(
          label: Text('All intensities'),
          selected: !logic.filterOptions.filterStrengths,
          onSelected: (value) {
            logic.setFilterStrengths(!value);
          },
        ),
        Visibility(
          visible: logic.filterOptions.filterStrengths,
          child: ChoiceChip(
            label: Text('Light (1 to 7)'),
            selected: logic.filterOptions.strengths.light,
            onSelected: (value) {
              logic.setFilterLightStrength(value);
            },
          ),
        ),
        Visibility(
          visible: logic.filterOptions.filterStrengths,
          child: ChoiceChip(
            label: Text('Intense (8 to 13)'),
            selected: logic.filterOptions.strengths.itense,
            onSelected: (value) {
              logic.setFilterIntenseStrength(value);
            },
          ),
        ),
      ],
    );
  }

  Wrap cupSize() {
    return Wrap(
      spacing: 8.0,
      runSpacing: 4.0,
      alignment: WrapAlignment.start,
      children: [
        ChoiceChip(
          label: Text('All cup sizes'),
          selected: !logic.filterOptions.filterCupSizes,
          onSelected: (value) {
            logic.setFilterCupSizes(!value);
          },
        ),
        Visibility(
          visible: logic.filterOptions.filterCupSizes,
          child: ChoiceChip(
            avatar: Image.asset('images/cupsize/ristretto.png', width: 25),
            label: Text('Ristretto'),
            selected: logic.filterOptions.cupSizes.ristretto,
            onSelected: (value) {
              logic.setFilterRistretto(value);
            },
          ),
        ),
        Visibility(
          visible: logic.filterOptions.filterCupSizes,
          child: ChoiceChip(
            avatar: Image.asset('images/cupsize/espresso.png', width: 25),
            label: Text('Espresso'),
            selected: logic.filterOptions.cupSizes.espresso,
            onSelected: (value) {
              logic.setFilterEspresso(value);
            },
          ),
        ),
        Visibility(
          visible: logic.filterOptions.filterCupSizes,
          child: ChoiceChip(
            avatar: Image.asset('images/cupsize/lungo.png', width: 25),
            label: Text('Lungo'),
            selected: logic.filterOptions.cupSizes.lungo,
            onSelected: (value) {
              logic.setFilterLungo(value);
            },
          ),
        ),
        Visibility(
          visible: logic.filterOptions.filterCupSizes,
          child: ChoiceChip(
            avatar: Image.asset('images/cupsize/milk.png', width: 25),
            label: Text('Milk'),
            selected: logic.filterOptions.cupSizes.milk,
            onSelected: (value) {
              logic.setFilterMilk(value);
            },
          ),
        ),
      ],
    );
  }

  Widget caffeine() {
    return Wrap(
      spacing: 8.0,
      runSpacing: 4.0,
      alignment: WrapAlignment.start,
      children: [
        ChoiceChip(
          label: Text('Caffeine & Decaf'),
          selected: !logic.filterOptions.filterCaffeineContent,
          onSelected: (value) {
            logic.setFilterCaffeineContent(!value);
          },
        ),
        Visibility(
          visible: logic.filterOptions.filterCaffeineContent,
          child: ChoiceChip(
            avatar: Icon(
              Icons.circle,
              color: (Colors.grey.shade900),
            ),
            label: Text('Caffeine'),
            selected: logic.filterOptions.caffeineContent.caffeine,
            onSelected: (value) {
              logic.setFilterCaffeine(value);
            },
          ),
        ),
        Visibility(
          visible: logic.filterOptions.filterCaffeineContent,
          child: ChoiceChip(
            avatar: Icon(
              Icons.circle,
              color: (Colors.red.shade900),
            ),
            label: Text('Decaf'),
            selected: logic.filterOptions.caffeineContent.decaf,
            onSelected: (value) {
              logic.setFilterDecaf(value);
            },
          ),
        ),
      ],
    );
  }

  Wrap freeText() {
    return Wrap(
      spacing: 8.0,
      runSpacing: 8.0,
      children: [
        TextField(
          decoration: InputDecoration(
            hintText: 'Search coffee capsules',
            border: const OutlineInputBorder(),
          ),
          controller: TextEditingController(text: logic.filterOptions.freeText),
          onChanged: (value) {
            logic.filterOptions.freeText = value;
          },
          onEditingComplete: () {
            logic.setFilterFreeText(logic.filterOptions.freeText);
          },
        )
      ],
    );
  }
}
