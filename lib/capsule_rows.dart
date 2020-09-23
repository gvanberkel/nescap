import 'package:flutter/material.dart';
import 'data/capsule_data.dart';
import 'widgets/gridCell.dart';
import 'widgets/valueBar.dart';

class CapsuleRows {
  static List<Row> get() {
    return [
      name(),
      grams(),
      decaf(),
      cupSize(),
      intensity(),
      acidity(),
      bitterness(),
      body(),
      roasting(),
      roastingNotes(),
      aromaticProfileNotes(),
      story(),
      origin(),
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
              child: Center(child: Text(capsule.gramsPer10Pack == 0 ? '' : '${capsule.gramsPer10Pack.toInt().toString()}g')),
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



  static Row roastingNotes() {
    return Row(
      children: addFieldName(
          Capsules.get().map((capsule) {
            return GridCell(
              height: 400,
              child: Text(capsule.flavourProfile.roastingNotes),
            );
          }).toList(),
          'Roasting',
          height: 400),
    );
  }

  static Row aromaticProfileNotes() {
    return Row(
      children: addFieldName(
          Capsules.get().map((capsule) {
            return GridCell(
              height: 400,
              child: Text(capsule.flavourProfile.aromaticProfileNotes),
            );
          }).toList(),
          'Aromatic Profile',
          height: 400),
    );
  }


  static Row story() {
    return Row(
      children: addFieldName(
          Capsules.get().map((capsule) {
            return GridCell(
              height: 700,
              child: Text(capsule.story),
            );
          }).toList(),
          'Story',
          height: 700),
    );
  }

  
  static Row origin() {
    return Row(
      children: addFieldName(
          Capsules.get().map((capsule) {
            return GridCell(
              height: 200,
              child: Text(capsule.orgin),
            );
          }).toList(),
          'Origin',
          height: 200),
    );
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
          'Name', height: 80),
    );
  }

  static List<GridCell> addFieldName(List<GridCell> list, String fieldName,
      {double height = 60}) {
    list.insert(
        0,
        GridCell(
          width: 160,
          height: height,
          title: true,
          child: Text(fieldName),
        ));
    return list;
  }
}
