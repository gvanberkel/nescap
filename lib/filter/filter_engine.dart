import 'package:nescap/data/capsule_data.dart';
import 'package:nescap/data/capsule_data_schema.dart';
import 'package:nescap/filter/filter_options.dart';

class FilterEngine {
  static List<CapsuleData> filter(FilterOptions filterOptions) {
    List<CapsuleData> results = [];

    for (CapsuleData data in Capsules.data) {
      if (!data.cupSize.espresso) results.add(data);
    }

    return results;
  }
}
