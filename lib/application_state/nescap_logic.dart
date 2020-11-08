import 'package:flutter/material.dart';
import 'package:nescap/capsule_data/capsule_data.dart';
import 'package:nescap/capsule_data/capsule_data_schema.dart';
import 'package:nescap/search_logic/search_engine.dart';
import 'package:nescap/search_logic/search_options.dart';

enum ResultsLayout { BestSuitedToConstraints, DataSheet, GridOfCapsules }

class NesCapLogic extends ChangeNotifier {
  bool ready;

  ResultsLayout resultsLayout = ResultsLayout.BestSuitedToConstraints;
  ResultsLayout currentResultsLayout;

  bool filtersVisible = false;
  SearchOptions filterOptions;
  List<CapsuleData> filteredCapsuleData;
  List<CapsuleData> projectedResults;

  NesCapLogic({this.filterOptions}) {
    ready = false;
    if (this.filterOptions == null) filterOptions = new SearchOptions();
    initialise();
  }

  void setFilterLightStrength(bool val) {
    filterOptions.strengths.light = val;
    setProjectedResultsCount();
    notifyListeners();
  }

  void setFilterIntenseStrength(bool val) {
    filterOptions.strengths.itense = val;
    setProjectedResultsCount();
    notifyListeners();
  }

  void setFilterStrengths(bool value) {
    filterOptions.filterStrengths = value;
    filterOptions.strengths.light = !value;
    filterOptions.strengths.itense = !value;
    setProjectedResultsCount();
    notifyListeners();
  }

  void filterData() {
    this.filteredCapsuleData = SearchEngine.filter(filterOptions);
    this.projectedResults = this.filteredCapsuleData;
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
    setProjectedResultsCount();
    notifyListeners();
  }

  void setFilterCaffeine(bool value) {
    this.filterOptions.caffeineContent.caffeine = value;
    setProjectedResultsCount();
    notifyListeners();
  }

  void setFilterDecaf(bool value) {
    this.filterOptions.caffeineContent.decaf = value;
    setProjectedResultsCount();
    notifyListeners();
  }

  void setFilterRistretto(bool value) {
    this.filterOptions.cupSizes.ristretto = value;
    setProjectedResultsCount();
    notifyListeners();
  }

  void setFilterEspresso(bool value) {
    this.filterOptions.cupSizes.espresso = value;
    setProjectedResultsCount();
    notifyListeners();
  }

  void setFilterLungo(bool value) {
    this.filterOptions.cupSizes.lungo = value;
    setProjectedResultsCount();
    notifyListeners();
  }

  void setFilterMilk(bool value) {
    this.filterOptions.cupSizes.milk = value;
    setProjectedResultsCount();
    notifyListeners();
  }

  void setFilterCupSizes(bool value) {
    this.filterOptions.filterCupSizes = value;
    this.filterOptions.cupSizes.milk = !value;
    this.filterOptions.cupSizes.ristretto = !value;
    this.filterOptions.cupSizes.espresso = !value;
    this.filterOptions.cupSizes.lungo = !value;
    setProjectedResultsCount();
    notifyListeners();
  }

  void setFilterCaffeineContent(bool value) {
    this.filterOptions.filterCaffeineContent = value;
    this.filterOptions.caffeineContent.caffeine = !value;
    this.filterOptions.caffeineContent.decaf = !value;
    setProjectedResultsCount();
    notifyListeners();
  }

  void setProjectedResultsCount() {
    projectedResults = SearchEngine.filter(filterOptions);
  }

  void setFilterFreeText(String value) {
    this.filterOptions.freeText = value;
    setProjectedResultsCount();
    notifyListeners();
  }

  void setCurrentResultsLayout(BoxConstraints constraints) {
    if (resultsLayout == ResultsLayout.BestSuitedToConstraints) {
      if (constraints.maxWidth > 700)
        currentResultsLayout = ResultsLayout.DataSheet;
      else
        currentResultsLayout = ResultsLayout.GridOfCapsules;
    } else {
      currentResultsLayout = resultsLayout;
    }
  }

  void setResultsLayout(ResultsLayout resultsLayout) {
    if (resultsLayout == null) return;
    this.resultsLayout = resultsLayout;
    notifyListeners();
  }
}
