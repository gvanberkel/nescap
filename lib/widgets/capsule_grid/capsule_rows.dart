import 'package:flutter/material.dart';
import 'package:nescap/data/capsule_data_schema.dart';
import '../../state/nescap_logic.dart';
import 'grid_cell.dart';
import '../value_bar.dart';

class CapsuleRows {
  static List<Row> get(NesCapLogic logic) {
    return [
      name(logic),
      decaf(logic),
      cupSize(logic),
      grams(logic),
      price(logic),
      intensity(logic),
      acidity(logic),
      bitterness(logic),
      body(logic),
      roasting(logic),
      descriptions(logic),
    ];
  }

  static Row cupSize(NesCapLogic logic) {
    return Row(
      children: addFieldName(
          logic.filteredCapsuleData.map((capsule) {
            return GridCell(
              height: 75,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (capsule.cupSize.ristretto)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset('images/cupsize/ristretto.png', width: 25),
                        Padding(
                          padding: const EdgeInsets.only(right: 3),
                          child: Text('r',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 12)),
                        ),
                      ],
                    ),
                  if (capsule.cupSize.espresso)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset('images/cupsize/espresso.png', width: 25),
                        Padding(
                          padding: const EdgeInsets.only(right: 3),
                          child: Text('e',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 12)),
                        ),
                      ],
                    ),
                  if (capsule.cupSize.lungo)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset('images/cupsize/lungo.png', width: 25),
                        Padding(
                          padding: const EdgeInsets.only(right: 1),
                          child: Text('L',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 12)),
                        ),
                      ],
                    ),
                  if (capsule.cupSize.milk)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset('images/cupsize/milk.png', width: 25),
                        Padding(
                          padding: const EdgeInsets.only(right: 3),
                          child: Text('m',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 12)),
                        ),
                      ],
                    ),
                ],
              ),
            );
          }).toList(),
          'Cup size',
          height: 75.0),
    );
  }

  static Row decaf(NesCapLogic logic) {
    return Row(
      children: addFieldName(
          logic.filteredCapsuleData.map((capsule) {
            return GridCell(
              child: Center(
                child: Icon(
                  Icons.circle,
                  color: (capsule.caffeine
                      ? Colors.grey.shade900
                      : Colors.red.shade900),
                ),
              ),
            );
          }).toList(),
          'Decaf'),
    );
  }

  static Row grams(NesCapLogic logic) {
    return Row(
      children: addFieldName(
          logic.filteredCapsuleData.map((capsule) {
            return GridCell(
              child: Center(
                  child: SelectableText(capsule.gramsPer10Pack == 0
                      ? ''
                      : '${capsule.gramsPer10Pack.toInt().toString()}g')),
            );
          }).toList(),
          'Grams per 10 pack'),
    );
  }

  static Row intensity(NesCapLogic logic) {
    return Row(
      children: addFieldName(
          logic.filteredCapsuleData.map((capsule) {
            return GridCell(
              child: ValueBar(
                maxValue: 13,
                value: capsule.flavourProfile.intensity,
              ),
            );
          }).toList(),
          'Intensity'),
    );
  }

  static Row body(NesCapLogic logic) {
    return Row(
      children: addFieldName(
          logic.filteredCapsuleData.map((capsule) {
            return GridCell(
              child: ValueBar(
                maxValue: 5,
                value: capsule.flavourProfile.body,
              ),
            );
          }).toList(),
          'Body'),
    );
  }

  static Row roasting(NesCapLogic logic) {
    return Row(
      children: addFieldName(
          logic.filteredCapsuleData.map((capsule) {
            return GridCell(
              child: ValueBar(
                maxValue: 5,
                value: capsule.flavourProfile.roasting,
              ),
            );
          }).toList(),
          'Roasting'),
    );
  }

  static List<Widget> roastingNotes(CapsuleData capsule) {
    var list = List<Widget>();
    if (capsule.flavourProfile.roastingNotes == '') return list;

    list.add(Text(
      'Roasting',
      style: TextStyle(
        fontWeight: FontWeight.bold,
      ),
    ));

    list.add(SelectableText(capsule.flavourProfile.roastingNotes));

    return list;
  }

  static Row acidity(NesCapLogic logic) {
    return Row(
      children: addFieldName(
          logic.filteredCapsuleData.map((capsule) {
            return GridCell(
              child: ValueBar(
                maxValue: 5,
                value: capsule.flavourProfile.acidity,
              ),
            );
          }).toList(),
          'Acidity'),
    );
  }

  static Row bitterness(NesCapLogic logic) {
    return Row(
      children: addFieldName(
          logic.filteredCapsuleData.map((capsule) {
            return GridCell(
              child: ValueBar(
                maxValue: 5,
                value: capsule.flavourProfile.bitterness,
              ),
            );
          }).toList(),
          'Bitterness'),
    );
  }

  static Row price(NesCapLogic logic) {
    return Row(
      children: addFieldName(
        logic.filteredCapsuleData.map((capsule) {
          return GridCell(
            child: Center(child: Text(capsule.price.toString())),
          );
        }).toList(),
        'Price',
      ),
    );
  }

  static List<Widget> aromaticProfileNotes(CapsuleData capsule) {
    var list = List<Widget>();

    if (capsule.flavourProfile.aromaticProfileNotes == '') return list;

    list.add(Text(
      'Aromatic profile',
      style: TextStyle(
        fontWeight: FontWeight.bold,
      ),
    ));
    list.add(SelectableText(capsule.flavourProfile.aromaticProfileNotes));

    return list;
  }

  static Row descriptions(NesCapLogic logic) {
    return Row(
      children: addFieldName(
          logic.filteredCapsuleData.map((capsule) {
            var list = List<Widget>();

            list.addAll(story(capsule));
            list.addAll(origin(capsule));
            list.addAll(roastingNotes(capsule));
            list.addAll(aromaticProfileNotes(capsule));

            return GridCell(
              height: 2500,
              child: Column(
                children: list,
              ),
            );
          }).toList(),
          '',
          height: 2500),
    );
  }

  static List<Widget> story(CapsuleData capsule) {
    var list = List<Widget>();
    if (capsule.story == '') return list;
    list.add(SelectableText(capsule.story));
    return list;
  }

  static List<Widget> origin(CapsuleData capsule) {
    var list = List<Widget>();
    if (capsule.orgin == '') return list;

    list.add(Text(
      'Origin',
      style: TextStyle(
        fontWeight: FontWeight.bold,
      ),
    ));

    list.add(SelectableText(capsule.orgin));
    return list;
  }

  static Row name(NesCapLogic logic) {
    return Row(
      children: addFieldName(
          logic.filteredCapsuleData.map((capsule) {
            return GridCell(
              child: Center(child: SelectableText(capsule.name)),
              height: 80,
            );
          }).toList(),
          'Name',
          height: 80),
    );
  }

  static List<GridCell> addFieldName(List<GridCell> list, String fieldName,
      {double height = 60}) {
    list.insert(
        0,
        GridCell(
          width: 170,
          height: height,
          title: true,
          child: Text(fieldName),
        ));
    return list;
  }
}
