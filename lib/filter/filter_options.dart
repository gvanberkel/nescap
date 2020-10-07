import '../data/capsule_data_schema.dart';

class FilterOptions {
  CupSize cupSize;

  FilterOptions({this.cupSize}) {
    if (this.cupSize == null) cupSize = CupSize.unFiltered();
  }
}
