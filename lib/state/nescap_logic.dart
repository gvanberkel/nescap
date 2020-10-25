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

  void setFilterLightStrength(bool val) {
    filterOptions.strengths.light = val;
    notifyListeners();
  }

  void setFilterIntenseStrength(bool val) {
    filterOptions.strengths.itense = val;
    notifyListeners();
  }

  void setFilterAllStrengths(bool value) {
    filterOptions.strengths.light = value;
    filterOptions.strengths.itense = value;
    notifyListeners();
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

  void setFilterCaffeine(bool value) {
    this.filterOptions.caffeineContent.caffeine = value;
    notifyListeners();
  }

  void setFilterDecaf(bool value) {
    this.filterOptions.caffeineContent.decaf = value;
    notifyListeners();
  }

  void setFilterRistretto(bool value) {
    this.filterOptions.cupSizes.ristretto = value;
    notifyListeners();
  }

  void setFilterEspresso(bool value) {
    this.filterOptions.cupSizes.espresso = value;
    notifyListeners();
  }

  void setFilterLungo(bool value) {
    this.filterOptions.cupSizes.lungo = value;
    notifyListeners();
  }

  void setFilterMilk(bool value) {
    this.filterOptions.cupSizes.milk = value;
    notifyListeners();
  }

  void setFilterAllCupSizes(bool value) {
    this.filterOptions.cupSizes.milk = value;
    this.filterOptions.cupSizes.ristretto = value;
    this.filterOptions.cupSizes.espresso = value;
    this.filterOptions.cupSizes.lungo = value;
    notifyListeners();
  }

  void setFilterAllCaffeineContent(bool value) {
    this.filterOptions.caffeineContent.caffeine = value;
    this.filterOptions.caffeineContent.decaf = value;
    notifyListeners();
  }
}
