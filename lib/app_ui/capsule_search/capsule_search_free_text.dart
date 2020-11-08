import 'package:flutter/material.dart';
import 'package:nescap/application_state/nescap_logic.dart';
import 'package:provider/provider.dart';

class CapsulSearchFreeText extends StatelessWidget {
  const CapsulSearchFreeText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var logic = Provider.of<NesCapLogic>(context);

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
}
