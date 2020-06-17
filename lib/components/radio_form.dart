import 'package:flutter/material.dart';

enum OrientationProps { row, column }

class RadioForm extends StatelessWidget {
  final List<Map<String, Object>> radioProps;
  final Object character;
  final void Function(Object) handleSelect;
  final OrientationProps orientation;

  const RadioForm({
    @required this.character,
    @required this.handleSelect,
    @required this.radioProps,
    @required this.orientation,
  });

  List<Widget> loadRadio() {
    return radioProps.map((radio) {
      return Padding(
        padding: const EdgeInsets.only(top: 5),
        child: Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          children: <Widget>[
            Radio(
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              value: radio["value"],
              groupValue: character,
              onChanged: (value) => handleSelect(value),
            ),
            Text(
              radio["label"],
            ),
          ],
        ),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    if (orientation == OrientationProps.row) {
      return Row(children: loadRadio());
    } else {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: loadRadio(),
      );
    }
  }
}
