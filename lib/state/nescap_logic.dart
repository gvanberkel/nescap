import 'package:flutter/material.dart';
import 'package:nescap/data/capsule_data.dart';
import 'package:nescap/data/capsule_data_schema.dart';
import 'package:nescap/filter/capsule_filter.dart';
import 'package:nescap/filter/filter_options.dart';

class NesCapLogic extends ChangeNotifier {
  bool ready;

  final FilterOptions filterOptions;
  List<CapsuleData> filteredCapsuleData;

  NesCapLogic({this.filterOptions}) {
    ready = false;
    initialise();
  }

  void filterData() {
    this.filteredCapsuleData = CapsuleFilter.filter(filterOptions);
    notifyListeners();
  }

  void initialise() async {
    Capsules.initialise();
    this.filteredCapsuleData = Capsules.data;
    ready = true;
  }
}
