import 'package:nescap/data/capsule_data.dart';
import 'package:nescap/data/capsule_data_schema.dart';
import 'package:nescap/filter/filter_options.dart';

class FilterEngine {
  static List<CapsuleData> filter(FilterOptions filterOptions) {
    List<CapsuleData> results = [];

    for (CapsuleData data in Capsules.data) {
      var addable = true;

      if (data.cupSize.ristretto != filterOptions.cupSizes.ristretto &&
          data.cupSize.espresso != filterOptions.cupSizes.espresso &&
          data.cupSize.lungo != filterOptions.cupSizes.lungo &&
          data.cupSize.milk != filterOptions.cupSizes.milk) addable = false;

      if (data.caffeine && !filterOptions.caffeineContent.caffeine)
        addable = false;

      if (!data.caffeine && !filterOptions.caffeineContent.decaf)
        addable = false;

      if (data.flavourProfile.intensity <= 7 && !filterOptions.strengths.light)
        addable = false;

      if (data.flavourProfile.intensity > 7 && !filterOptions.strengths.itense)
        addable = false;

      if (addable) results.add(data);
    }

    return results;
  }
}
