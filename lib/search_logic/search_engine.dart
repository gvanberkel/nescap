
import 'package:nescap/capsule_data/capsule_data.dart';
import 'package:nescap/capsule_data/capsule_data_schema.dart';
import 'package:nescap/search_logic/search_options.dart';

class SearchEngine {
  static List<CapsuleData> filter(SearchOptions filterOptions) {
    List<CapsuleData> results = [];

    for (CapsuleData data in Capsules.data) {
      var addable = true;

      if (!(data.cupSize.ristretto && filterOptions.cupSizes.ristretto) &&
          !(data.cupSize.espresso && filterOptions.cupSizes.espresso) &&
          !(data.cupSize.lungo && filterOptions.cupSizes.lungo) &&
          !(data.cupSize.milk && filterOptions.cupSizes.milk)) addable = false;

      if (data.caffeine && !filterOptions.caffeineContent.caffeine)
        addable = false;

      if (!data.caffeine && !filterOptions.caffeineContent.decaf)
        addable = false;

      if (data.flavourProfile.intensity <= 7 && !filterOptions.strengths.light)
        addable = false;

      if (data.flavourProfile.intensity > 7 && !filterOptions.strengths.itense)
        addable = false;

      if (filterOptions.freeText != '') {
        if (!data.story.contains(filterOptions.freeText) &&
            !data.name.contains(filterOptions.freeText) &&
            !data.orgin.contains(filterOptions.freeText) &&
            !data.flavourProfile.roastingNotes
                .contains(filterOptions.freeText) &&
            !data.flavourProfile.aromaticProfileNotes
                .contains(filterOptions.freeText)) addable = false;
      }

      if (addable) results.add(data);
    }

    return results;
  }
}
