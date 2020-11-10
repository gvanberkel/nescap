import 'package:flutter/material.dart';
import 'package:nescap/application_state/nescap_logic.dart';
import 'package:nescap/capsule_data/capsule_data_schema.dart';
import 'package:nescap/ui_components/value_bar.dart';
import 'package:provider/provider.dart';
import 'capsule_datasheet_data_headers.dart';
import 'cup_size_widget.dart';
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
      _name(),
      caffeineContent(),
      cupSize(),
      grams(),
      _price(),
      intensity(),
      _acidity(),
      _bitterness(),
      _body(),
      _roasting(),
      _descriptions(),
    ];
  }

  Row cupSize() {
    return Row(
      children: _addFieldName(
          logic.filteredCapsuleData.map((capsule) {
            return DataSheetCell(
              height: 75,
              child: CupSizeWidget(capsule: capsule, showLabels: true),
            );
          }).toList(),
          'Cup size',
          height: 75.0),
    );
  }

  Row caffeineContent() {
    return Row(
      children: _addFieldName(
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
      children: _addFieldName(
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
      children: _addFieldName(
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

  Row _body() {
    return Row(
      children: _addFieldName(
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

  Row _roasting() {
    return Row(
      children: _addFieldName(
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

  Row _acidity() {
    return Row(
      children: _addFieldName(
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

  Row _bitterness() {
    return Row(
      children: _addFieldName(
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

  Row _price() {
    return Row(
      children: _addFieldName(
        logic.filteredCapsuleData.map((capsule) {
          return DataSheetCell(
            child: Center(child: Text(capsule.price.toString())),
          );
        }).toList(),
        'Price',
      ),
    );
  }

  Row _descriptions() {
    return Row(
      children: _addFieldName(
          logic.filteredCapsuleData.map((capsule) {
            var list = descriptionTextWidgetList(capsule);

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

  Row _name() {
    return Row(
      children: _addFieldName(
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

  List<DataSheetCell> _addFieldName(List<DataSheetCell> list, String fieldName,
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

//Create CapsuleDescriptionText widget that takes in CapsuleData
List<Widget> descriptionTextWidgetList(CapsuleData capsule) {
  List<Widget> list = new List<Widget>();
  list.addAll(_story(capsule));
  list.addAll(_origin(capsule));
  list.addAll(_roastingNotes(capsule));
  list.addAll(_aromaticProfileNotes(capsule));
  return list;
}

List<Widget> _story(CapsuleData capsule) {
  var list = List<Widget>();
  if (capsule.story == '') return list;
  list.add(SelectableText(capsule.story));
  return list;
}

List<Widget> _origin(CapsuleData capsule) {
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

List<Widget> _aromaticProfileNotes(CapsuleData capsule) {
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

List<Widget> _roastingNotes(CapsuleData capsule) {
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
