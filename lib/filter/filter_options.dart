import '../data/capsule_data_schema.dart';

class FilterOptions {
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

  FilterOptions();
}

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
