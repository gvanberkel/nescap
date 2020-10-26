import '../data/capsule_data_schema.dart';

class SearchOptions {
  CupSize cupSizes = CupSize(
    ristretto: false,
    espresso: false,
    lungo: false,
    milk: false,
  );
  String freeText = '';
  CaffeineContent caffeineContent = CaffeineContent(
    caffeine: false,
    decaf: false,
  );
  CoffeeStrength strengths = CoffeeStrength(
    light: false,
    itense: false,
  );
  ResultsLayout resultsLayout = ResultsLayout.DataSheet;

  SearchOptions();
}

enum ResultsLayout { DataSheet, DrillDown }

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
