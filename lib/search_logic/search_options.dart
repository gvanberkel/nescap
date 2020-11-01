
import 'package:nescap/capsule_data/capsule_data_schema.dart';

class SearchOptions {
  CupSize cupSizes = CupSize(
    ristretto: true,
    espresso: true,
    lungo: true,
    milk: true,
  );
  bool filterCupSizes = false;

  String freeText = '';

  CaffeineContent caffeineContent = CaffeineContent(
    caffeine: true,
    decaf: true,
  );
  bool filterCaffeineContent = false;

  CoffeeStrength strengths = CoffeeStrength(
    light: true,
    itense: true,
  );
  bool filterStrengths = false;

  ResultsLayout resultsLayout = ResultsLayout.GridOfCapsules;

  SearchOptions();
}

enum ResultsLayout { DataSheet, GridOfCapsules }

class CaffeineContent {
  bool caffeine;
  bool decaf;

  CaffeineContent({this.caffeine, this.decaf});

  get allSet => this.caffeine && this.decaf;
}

class CoffeeStrength {
  bool light;
  bool itense;

  CoffeeStrength({this.light, this.itense});

  bool get allSet => light && itense;
}
