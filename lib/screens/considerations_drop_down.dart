import 'package:flutter/material.dart';
import 'package:novena/util/considerations.dart';

import '../resources.dart';

class ConsiderationsDropDown extends StatefulWidget {
  ConsiderationsDropDown({Key key}) : super(key: key);

  @override
  _ConsiderationsDropDownState createState() => _ConsiderationsDropDownState();
}

class _ConsiderationsDropDownState extends State<ConsiderationsDropDown> {
  ConsiderationType _chosenConsideration = ConsiderationType.LANGUSTA_2018;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(Resources.of(context).chooseConsiderations),
      content: DropdownButton<ConsiderationType>(
        value: _chosenConsideration,
        items: ConsiderationType.values.map((ConsiderationType type) {
          return DropdownMenuItem<ConsiderationType>(
              value: type,
              child: Text(Considerations.getConsiderationName(type, context)));
        }).toList(),
        onChanged: (ConsiderationType value) {
          setState(() {
            _chosenConsideration = value;
          });
        },
      ),
      actions: <Widget>[
        FlatButton(
          child: Text(Resources.of(context).ok),
          onPressed: () {
            // widget.updateNovena();
            Navigator.pop(context, _chosenConsideration);
          },
        ),
      ],
    );
  }
}
