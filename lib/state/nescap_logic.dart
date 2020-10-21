import 'package:flutter/material.dart';
import 'package:nescap/data/capsule_data.dart';
import 'package:nescap/data/capsule_data_schema.dart';
import 'package:nescap/filter/filter_engine.dart';
import 'package:nescap/filter/filter_options.dart';

class NesCapLogic extends ChangeNotifier {
  bool ready;

  bool filtersVisible = false;
  FilterOptions filterOptions;
  List<CapsuleData> filteredCapsuleData;

  NesCapLogic({this.filterOptions}) {
    ready = false;
    if (this.filterOptions == null) filterOptions = new FilterOptions();
    initialise();
  }

  void filterData() {
    this.filteredCapsuleData = FilterEngine.filter(filterOptions);
    this.filtersVisible = false;
    notifyListeners();
  }

  void initialise() async {
    Capsules.initialise();
    this.filteredCapsuleData = Capsules.data;
    ready = true;
    notifyListeners();
  }

  void showFilters() {
    filtersVisible = true;
    notifyListeners();
  }
}
