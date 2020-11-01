import 'package:flutter/material.dart';
import 'package:nescap/application_state/nescap_logic.dart';
import 'package:nescap/capsule_data/capsule_data_schema.dart';
import 'package:nescap/ui_components/value_bar.dart';
import 'package:provider/provider.dart';
import 'capsule_datasheet_data_headers.dart';
import 'datasheet_cell.dart';

class CapsuleDataSheetData extends StatefulWidget {
  @override
  _CapsuleDataSheetDataState createState() => _CapsuleDataSheetDataState();
}

class _CapsuleDataSheetDataState extends State<CapsuleDataSheetData> {
  @override
  Widget build(BuildContext context) {
    return Consumer<NesCapLogic>(
      builder: (_, logic, __) {
        this.logic = logic;
        return Column(
          children: rows(),
        );
      },
    );
  }

  NesCapLogic logic;

  List<Widget> rows() {
    return [
      CapsuleDataSheetHeaders(),
      name(),
      caffeineContent(),
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

  Row cupSize() {
    return Row(
      children: addFieldName(
          logic.filteredCapsuleData.map((capsule) {
            return DataSheetCell(
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

  Row caffeineContent() {
    return Row(
      children: addFieldName(
          logic.filteredCapsuleData.map((capsule) {
            return DataSheetCell(
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
          'Caffeine content'),
    );
  }

  Row grams() {
    return Row(
      children: addFieldName(
          logic.filteredCapsuleData.map((capsule) {
            return DataSheetCell(
              child: Center(
                  child: SelectableText(capsule.gramsPer10Pack == 0
                      ? ''
                      : '${capsule.gramsPer10Pack.toInt().toString()}g')),
            );
          }).toList(),
          'Grams per 10 pack'),
    );
  }

  Row intensity() {
    return Row(
      children: addFieldName(
          logic.filteredCapsuleData.map((capsule) {
            return DataSheetCell(
              child: ValueBar(
                maxValue: 13,
                value: capsule.flavourProfile.intensity,
              ),
            );
          }).toList(),
          'Intensity'),
    );
  }

  Row body() {
    return Row(
      children: addFieldName(
          logic.filteredCapsuleData.map((capsule) {
            return DataSheetCell(
              child: ValueBar(
                maxValue: 5,
                value: capsule.flavourProfile.body,
              ),
            );
          }).toList(),
          'Body'),
    );
  }

  Row roasting() {
    return Row(
      children: addFieldName(
          logic.filteredCapsuleData.map((capsule) {
            return DataSheetCell(
              child: ValueBar(
                maxValue: 5,
                value: capsule.flavourProfile.roasting,
              ),
            );
          }).toList(),
          'Roasting'),
    );
  }

  List<Widget> roastingNotes(CapsuleData capsule) {
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

  Row acidity() {
    return Row(
      children: addFieldName(
          logic.filteredCapsuleData.map((capsule) {
            return DataSheetCell(
              child: ValueBar(
                maxValue: 5,
                value: capsule.flavourProfile.acidity,
              ),
            );
          }).toList(),
          'Acidity'),
    );
  }

  Row bitterness() {
    return Row(
      children: addFieldName(
          logic.filteredCapsuleData.map((capsule) {
            return DataSheetCell(
              child: ValueBar(
                maxValue: 5,
                value: capsule.flavourProfile.bitterness,
              ),
            );
          }).toList(),
          'Bitterness'),
    );
  }

  Row price() {
    return Row(
      children: addFieldName(
        logic.filteredCapsuleData.map((capsule) {
          return DataSheetCell(
            child: Center(child: Text(capsule.price.toString())),
          );
        }).toList(),
        'Price',
      ),
    );
  }

  Row descriptions() {
    return Row(
      children: addFieldName(
          logic.filteredCapsuleData.map((capsule) {
            var list = List<Widget>();

            list.addAll(story(capsule));
            list.addAll(origin(capsule));
            list.addAll(roastingNotes(capsule));
            list.addAll(aromaticProfileNotes(capsule));

            return DataSheetCell(
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

  Row name() {
    return Row(
      children: addFieldName(
          logic.filteredCapsuleData.map((capsule) {
            return DataSheetCell(
              child: Center(child: SelectableText(capsule.name)),
              height: 80,
            );
          }).toList(),
          'Name',
          height: 80),
    );
  }

  List<Widget> aromaticProfileNotes(CapsuleData capsule) {
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

  List<Widget> story(CapsuleData capsule) {
    var list = List<Widget>();
    if (capsule.story == '') return list;
    list.add(SelectableText(capsule.story));
    return list;
  }

  List<Widget> origin(CapsuleData capsule) {
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

  List<DataSheetCell> addFieldName(List<DataSheetCell> list, String fieldName,
      {double height = 60}) {
    list.insert(
        0,
        DataSheetCell(
          width: 170,
          height: height,
          title: true,
          child: Text(fieldName),
        ));
    return list;
  }
}
