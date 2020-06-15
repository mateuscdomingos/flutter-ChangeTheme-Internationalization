import 'package:flutter/material.dart';

class RadioForm extends StatelessWidget {
  final List<Map<String, Object>> radioProps;
  final num character;
  final void Function(int) handleSelect;
  final bool row;

  const RadioForm({
    @required this.character,
    @required this.handleSelect,
    @required this.radioProps,
    this.row: false,
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
    if (row) {
      return Row(children: loadRadio());
    } else {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: loadRadio(),
      );
    }
  }
}
