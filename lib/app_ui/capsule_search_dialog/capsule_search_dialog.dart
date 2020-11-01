import 'package:flutter/material.dart';
import 'package:nescap/application_state/nescap_logic.dart';
import 'package:nescap/capsule_data/capsule_data.dart';
import 'package:nescap/search_logic/search_options.dart';
import 'package:provider/provider.dart';

class CapsuleSearchDialog extends StatefulWidget {
  CapsuleSearchDialog({Key key, @required this.logic}) : super(key: key);

  final NesCapLogic logic;

  @override
  _CapsuleSearchDialogState createState() => _CapsuleSearchDialogState();
}

class _CapsuleSearchDialogState extends State<CapsuleSearchDialog> {
  Color selectedColour;
  Color buttonColour;

  NesCapLogic logic;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    this.selectedColour = Theme.of(context).primaryColor.withOpacity(.3);
    this.buttonColour = Theme.of(context).buttonColor;

    this.logic = widget.logic;

    return ChangeNotifierProvider.value(
        value: widget.logic,
        builder: (_, __) {
          return Consumer<NesCapLogic>(
            builder: (_, logic, __) {
              return GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Material(
                  color: Theme.of(context).dialogBackgroundColor.withAlpha(120),
                  child: filtersDialogResponsiveLogic(context),
                ),
              );
            },
          );
        });
  }

  Widget filtersDialogResponsiveLogic(BuildContext context) {
    return LayoutBuilder(
      builder: (context, boxConstraints) {
        if (boxConstraints.maxWidth > 600)
          return Stack(
            children: [
              Positioned(
                left: 10,
                top: 10,
                child: Container(
                  width: 500,
                  padding: EdgeInsets.all(8.0),
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
                  child: filtersDialog(context),
                ),
              ),
            ],
          );
        else {
          return Container(
              color: Theme.of(context).dialogBackgroundColor,
              child: filtersDialog(context));
        }
      },
    );
  }

  Widget filtersDialog(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        //onTap declared to make this area ignored by parent dismiss gesture detector
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.all(0),
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                Text(
                  'Explore capsules',
                  style: Theme.of(context).textTheme.headline6,
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            _freeText(),
            SizedBox(
              height: 8,
            ),
            _highLevelFilters(),
            _caffeine(),
            _cupSize(),
            _strength(),
            _layout(),
            SizedBox(
              height: 8,
            ),
            _searchButton()
          ],
        ),
      ),
    );
  }

  Widget _highLevelFilters() {
    return Wrap(
      spacing: 8.0,
      runSpacing: 8.0,
      children: [
        FilterChip(
          label: Text('Caffeine'),
          selectedColor: selectedColour,
          selected: logic.filterOptions.filterCaffeineContent,
          onSelected: (value) {
            logic.setFilterCaffeineContent(value);
          },
        ),
        FilterChip(
          label: Text('Cup size'),
          selected: logic.filterOptions.filterCupSizes,
          selectedColor: selectedColour,
          onSelected: (value) {
            logic.setFilterCupSizes(value);
          },
        ),
        FilterChip(
          label: Text('Intensity'),
          selected: logic.filterOptions.filterStrengths,
          selectedColor: selectedColour,
          onSelected: (value) {
            logic.setFilterStrengths(value);
          },
        ),
      ],
    );
  }

  Wrap _freeText() {
    return Wrap(
      spacing: 8.0,
      runSpacing: 8.0,
      children: [
        TextField(
          decoration: InputDecoration(
            suffixIcon: Icon(Icons.search),
            hintText: 'Search coffee capsules',
          ),
          controller: TextEditingController(text: logic.filterOptions.freeText),
          onChanged: (value) {
            logic.filterOptions.freeText = value;
          },
          onSubmitted: (value) {
            logic.setFilterFreeText(value);
          },
        )
      ],
    );
  }

  Widget _strength() {
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
                selectedColor: selectedColour,
                onSelected: (value) {
                  logic.setFilterLightStrength(value);
                },
              ),
              FilterChip(
                label: Text('Intense (8 to 13)'),
                selected: logic.filterOptions.strengths.itense,
                selectedColor: selectedColour,
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

  Widget _cupSize() {
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
                selectedColor: selectedColour,
                selected: logic.filterOptions.cupSizes.ristretto,
                onSelected: (value) {
                  logic.setFilterRistretto(value);
                },
              ),
              FilterChip(
                showCheckmark: false,
                avatar: Image.asset('images/cupsize/espresso.png', width: 25),
                label: Text('Espresso'),
                selectedColor: selectedColour,
                selected: logic.filterOptions.cupSizes.espresso,
                onSelected: (value) {
                  logic.setFilterEspresso(value);
                },
              ),
              FilterChip(
                showCheckmark: false,
                avatar: Image.asset('images/cupsize/lungo.png', width: 25),
                label: Text('Lungo'),
                selectedColor: selectedColour,
                selected: logic.filterOptions.cupSizes.lungo,
                onSelected: (value) {
                  logic.setFilterLungo(value);
                },
              ),
              FilterChip(
                showCheckmark: false,
                avatar: Image.asset('images/cupsize/milk.png', width: 25),
                label: Text('Milk'),
                selectedColor: selectedColour,
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

  Widget _caffeine() {
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
                selectedColor: selectedColour,
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
                selectedColor: selectedColour,
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

  Widget _layout() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 16.0),
        Text('View', style: Theme.of(context).textTheme.subtitle2),
        Wrap(
          spacing: 8.0,
          runSpacing: 4.0,
          alignment: WrapAlignment.start,
          children: [
            ChoiceChip(
              label: Text('Data sheet'),
              avatar: Icon(Icons.view_column_outlined),
              selected:
                  logic.filterOptions.resultsLayout == ResultsLayout.DataSheet,
              selectedColor: selectedColour,
              onSelected: (value) {
                logic.setResultsLayout(
                    value ? ResultsLayout.DataSheet : ResultsLayout.GridOfCapsules);
              },
            ),
            ChoiceChip(
              label: Text('Grid of capsules'),
              avatar: Icon(Icons.grid_view),
              selected:
                  logic.filterOptions.resultsLayout == ResultsLayout.GridOfCapsules,
              selectedColor: selectedColour,
              onSelected: (value) {
                logic.setResultsLayout(
                    value ? ResultsLayout.GridOfCapsules : ResultsLayout.DataSheet);
              },
            ),
          ],
        ),
      ],
    );
  }

  Widget _searchButton() {
    var capsulesString =
        logic.projectedResultsCount == 1 ? 'capsule' : 'capsules';

    var allString =
        (logic.projectedResultsCount == Capsules.data.length) ? 'ALL ' : '';

    return OutlineButton(
      onPressed: () {
        logic.filterData();
        Navigator.pop(context);
      },
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Show'.toUpperCase()),
          Text(
            ' $allString${logic.projectedResultsCount} ',
            style: TextStyle(color: buttonColour, fontWeight: FontWeight.bold),
          ),
          Text('$capsulesString'.toUpperCase()),
        ],
      ),
    );
  }
}
