import 'package:flutter/material.dart';
import 'package:novena/classes/novena.dart';
import 'package:novena/util/date.dart';

import '../resources.dart';

class StartNovenaScreen extends StatefulWidget {
  Novena _novena;
  final ValueChanged<Novena> _updateNovena;

  @override
  _StartNovenaScreenState createState() => _StartNovenaScreenState();

  StartNovenaScreen(this._novena, this._updateNovena);

  void updateNovena() {
    _updateNovena(_novena);
  }
}

class _StartNovenaScreenState extends State<StartNovenaScreen> {

  Future _selectStartNovenaDate() async {
    DateTime pickedDate = await showDatePicker(
        context: context,
        initialDate: Date.now(),
        firstDate: Date.now().subtract(Duration(days: 54)),
        lastDate: Date.now()
    );
    if(pickedDate != null) {
      widget._novena = Novena.startNovenaFromDate(pickedDate);
      widget.updateNovena();
    }
  }


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          FlatButton(
            child: Text(
              Resources.of(context).startNovena,
            ),
            color: Theme.of(context).buttonColor,
            onPressed: () {
              _selectStartNovenaDate();
            },
          ),
        ],
      ),
    );
  }
}
