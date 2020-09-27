import 'package:flutter/material.dart';
import 'package:nescap/data/capsule_data_schema.dart';
import 'data/capsule_data.dart';
import 'widgets/gridCell.dart';
import 'widgets/valueBar.dart';

class CapsuleRows {
  static List<Row> get() {
    return [
      name(),
      decaf(),
      cupSize(),
      grams(),
      price(),
      intensity(),
      acidity(),
      bitterness(),
      body(),
      roasting(),
      descriptions(),
    ];
  }

  static Row cupSize() {
    return Row(
      children: addFieldName(
          Capsules.get().map((capsule) {
            return GridCell(
              height: 72,
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
          height: 72.0),
    );
  }

  static Row decaf() {
    return Row(
      children: addFieldName(
          Capsules.get().map((capsule) {
            return GridCell(
              child: Center(
                  child: Icon(Icons.circle,
                      color: (capsule.caffeine
                          ? Colors.grey.shade900
                          : Colors.red.shade900))),
            );
          }).toList(),
          'Decaf'),
    );
  }

  static Row grams() {
    return Row(
      children: addFieldName(
          Capsules.get().map((capsule) {
            return GridCell(
              child: Center(
                  child: Text(capsule.gramsPer10Pack == 0
                      ? ''
                      : '${capsule.gramsPer10Pack.toInt().toString()}g')),
            );
          }).toList(),
          'Grams per 10 pack'),
    );
  }

  static Row intensity() {
    return Row(
      children: addFieldName(
          Capsules.get().map((capsule) {
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

  static Row body() {
    return Row(
      children: addFieldName(
          Capsules.get().map((capsule) {
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

  static Row roasting() {
    return Row(
      children: addFieldName(
          Capsules.get().map((capsule) {
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

    list.add(Text(capsule.flavourProfile.roastingNotes));

    return list;
  }

  static Row acidity() {
    return Row(
      children: addFieldName(
          Capsules.get().map((capsule) {
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

  static Row bitterness() {
    return Row(
      children: addFieldName(
          Capsules.get().map((capsule) {
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

  static Row price() {
    return Row(
      children: addFieldName(
        Capsules.get().map((capsule) {
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
    list.add(Text(capsule.flavourProfile.aromaticProfileNotes));

    return list;
  }

  static Row descriptions() {
    return Row(
      children: addFieldName(
          Capsules.get().map((capsule) {
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
    list.add(Text(capsule.story));
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

    list.add(Text(capsule.orgin));
    return list;
  }

  static Row name() {
    return Row(
      children: addFieldName(
          Capsules.get().map((capsule) {
            return GridCell(
              child: Center(child: Text(capsule.name)),
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
