import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:novena/classes/novena.dart';
import 'package:novena/screens/notifications_settings_dialog.dart';
import 'package:novena/util/considerations.dart';
import 'package:novena/util/date.dart';

import '../resources.dart';
import 'considerations_drop_down.dart';

class StartNovenaScreen extends StatefulWidget {
  Novena _novena;
  final ValueChanged<Novena> _updateNovena;
  FlutterLocalNotificationsPlugin notificationsPlugin;

  @override
  _StartNovenaScreenState createState() => _StartNovenaScreenState();

  StartNovenaScreen(
      this._novena, this._updateNovena, this.notificationsPlugin);

  void updateNovena() {
    _updateNovena(_novena);
  }
}

class _StartNovenaScreenState extends State<StartNovenaScreen> {
  Future<void> _selectStartNovenaDate(BuildContext context) async {
    DateTime pickedDate = await showDatePicker(
        context: context,
        initialDate: Date.now(),
        firstDate: Date.now().subtract(Duration(days: 54)),
        lastDate: Date.now());
    if (pickedDate != null) {
      ConsiderationType considerationType = await showDialog<ConsiderationType>(
          context: context,
          builder: (BuildContext dialogContext) {
            return ConsiderationsDropDown();
          });
      await showDialog(
          context: context,
          builder: (BuildContext dialogContext) {
            return NotificationsSettingsDialog(
                this.widget.notificationsPlugin);
          });
      widget._novena = Novena.startNovena(pickedDate, considerationType);
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
              _selectStartNovenaDate(context);
            },
          ),
        ],
      ),
    );
  }
}
