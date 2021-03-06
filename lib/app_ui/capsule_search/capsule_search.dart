import 'package:flutter/material.dart';
import 'package:nescap/app_ui/capsule_details/capsule_details.dart';
import 'package:nescap/app_ui/settings/settings.dart';
import 'package:nescap/application_state/nescap_logic.dart';
import 'package:nescap/capsule_data/capsule_data.dart';
import 'package:nescap/theme/nescap_theme.dart';
import 'package:provider/provider.dart';

class CapsuleSearch extends StatelessWidget {
  const CapsuleSearch({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var logic = Provider.of<NesCapLogic>(context);

    return SingleChildScrollView(
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
                  '',
                  style: Theme.of(context).textTheme.headline6,
                ),
                Spacer(flex: 1),
                Settings(logic: logic),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Text('What coffee do you feel like?',
                style: Theme.of(context).textTheme.headline2),
            SizedBox(height: 32,),
            FilterChip(
              showCheckmark: false,
              avatar: Row(
                children: [
                  Image.asset('images/cupsize/ristretto.png'),
                  Icon(
                    Icons.circle,
                    color: (Colors.red.shade900),
                  ),
                ],
              ),
              
              label: Text('Short decaf coffees'),
              selectedColor: NesCapTheme.selectedColour,
              selected: false,
              onSelected: (value) {
                logic.setFilterRistretto(value);
              },
            ),
SizedBox(height: 32,),
            // CapsulSearchFreeText(),
            // SizedBox(
            //   height: 8,
            // ),
            // CapsuleSearchHighLevelFilters(),
            // CapsuleSearchCaffeineContent(),
            // CapsuleSearchCupSize(),
            // CapsuleSearchStrength(),
            // SizedBox(
            //   height: 8,
            // ),
            capsuleView(context, logic),
            searchButton(context, logic),
          ],
        ),
      ),
    );
  }

  Widget searchButton(BuildContext context, NesCapLogic logic) {
    var capsulesString =
        logic.projectedResults.length == 1 ? 'capsule' : 'capsules';

    var allString =
        (logic.projectedResults.length == Capsules.data.length) ? 'ALL ' : '';

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
            ' $allString${logic.projectedResults.length} ',
            style: TextStyle(
                color: Theme.of(context).buttonColor,
                fontWeight: FontWeight.bold),
          ),
          Text('$capsulesString'.toUpperCase()),
        ],
      ),
    );
  }

  Widget capsuleView(BuildContext context, NesCapLogic logic) {
    return Wrap(
      children: logic.projectedResults
          .map(
            (capsule) => GestureDetector(
              onTap: () {
                showDialog(
                  context: context,
                  barrierDismissible: true,
                  useSafeArea: true,
                  barrierColor: Colors.transparent,
                  builder: (_) => CapsuleDetails(data: capsule),
                );
              },
              child: Container(
                width: 40,
                child:
                    Image.asset('images/capsules/${capsule.mainImageFileName}'),
              ),
            ),
          )
          .toList(),
    );
  }
}
