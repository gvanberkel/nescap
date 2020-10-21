import '../data/capsule_data_schema.dart';

class FilterOptions {
  CupSize cupSize;
  String freeText;

  FilterOptions({this.cupSize, this.freeText}) {
    if (cupSize == null) cupSize = CupSize.unFiltered();
    if (this.freeText == null) this.freeText = '';
  }
}
