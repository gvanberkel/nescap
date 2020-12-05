import 'package:flutter/material.dart';
import 'package:nescap/application_state/nescap_logic.dart';
import 'package:provider/provider.dart';

import 'capsule_search.dart';

class CapsuleSearchDialog extends StatefulWidget {
  CapsuleSearchDialog({Key key, @required this.logic}) : super(key: key);

  final NesCapLogic logic;

  @override
  _CapsuleSearchDialogState createState() => _CapsuleSearchDialogState();
}

class _CapsuleSearchDialogState extends State<CapsuleSearchDialog> {
  NesCapLogic logic;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
                  child: CapsuleSearch(),
                ),
              ),
            ],
          );
        else {
          return Container(
              color: Theme.of(context).dialogBackgroundColor,
              child: GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: () {
                  //onTap declared to make this area ignored by parent dismiss gesture detector
                },
                child: CapsuleSearch(),
              ));
        }
      },
    );
  }
}
