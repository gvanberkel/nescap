import 'package:flutter/material.dart';
import 'package:nescap/app_ui/capsule_details/capsule_details.dart';
import 'package:nescap/app_ui/capsule_search_dialog/capsule_search_dialog.dart';
import 'package:nescap/application_state/nescap_logic.dart';
import 'package:provider/provider.dart';

class CapsuleDrillDown extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<NesCapLogic>(
      builder: (_, logic, __) {
        return SafeArea(
          child: Material(
            child: Column(
              children: [
                SizedBox(height: 8.0),
                FlatButton.icon(
                  onPressed: () {
                    showDialog(
                      context: context,
                      barrierDismissible: true,
                      useSafeArea: true,
                      barrierColor: Colors.transparent,
                      builder: (_) => CapsuleSearchDialog(logic: logic),
                    );

                    logic.showFilters();
                  },
                  icon: Icon(Icons.explore_outlined),
                  label: Text('Explore'),
                ),
                SizedBox(height: 16),
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 5,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 1,
                    children: logic.filteredCapsuleData
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
                            child: Image.asset(
                                'images/capsules/${capsule.mainImageFileName}'),
                          ),
                        )
                        .toList(),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
