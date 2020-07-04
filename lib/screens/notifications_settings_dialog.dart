import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:intl/intl.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';

import '../resources.dart';

class NotificationsSettingsDialog extends StatefulWidget {
  FlutterLocalNotificationsPlugin notificationsPlugin;

  NotificationsSettingsDialog(this.notificationsPlugin);

  @override
  _NotificationsSettingsDialogState createState() =>
      _NotificationsSettingsDialogState();
}

class _NotificationsSettingsDialogState
    extends State<NotificationsSettingsDialog> {
  int numberOfNotifications = 0;
  List<DateTimeField> notificationsTimePickers = [];
  List<TimeOfDay> notificationTimes = [];

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Dzienne przypomnienia o różańcu"),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: generateContent(),
      ),
      actions: <Widget>[
        FlatButton(
          child: Text(Resources.of(context).ok),
          onPressed: () {
            scheduleNotifications();
            Navigator.pop(context);
          },
        ),
      ],
    );
  }

  List<Widget> generateContent() {
    List<Widget> widgets = <Widget>[
      Row(children: <Widget>[
        Text("Liczba przypomnień: "),
        DropdownButton<int>(
          value: numberOfNotifications,
          items: [0, 1, 2, 3].map((int integer) {
            return DropdownMenuItem<int>(
                value: integer, child: Text(integer.toString()));
          }).toList(),
          onChanged: (int value) {
            setState(() {
              numberOfNotifications = value;
              generateTimePickers(value);
            });
          },
        ),
      ],),
    ];
    widgets.addAll(notificationsTimePickers);
    return widgets;
  }

  List<DateTimeField> generateTimePickers(int n) {
    notificationsTimePickers = [];
    notificationTimes = [];
    for (int i = 0; i < n; ++i) {
      notificationsTimePickers.add(
        DateTimeField(
          decoration: InputDecoration(labelText: 'Godizna przypomnienia'),
          format: DateFormat("HH:mm"),
          onShowPicker: (context, currentValue) async {
            final time = await showTimePicker(
              context: context,
              initialTime:
                  TimeOfDay.fromDateTime(currentValue ?? DateTime.now()),
            );
            notificationTimes.add(time);
            return DateTimeField.convert(time);
          },
        ),
      );
    }
  }

  Future<void> scheduleNotifications() async {
    var androidPlatformChannelSpecifics = AndroidNotificationDetails(
        'novenaApp', 'novenaApp', 'Novena notifications');
    var iOSPlatformChannelSpecifics = IOSNotificationDetails();
    var platformChannelSpecifics = NotificationDetails(
        androidPlatformChannelSpecifics, iOSPlatformChannelSpecifics);
    int i = 0;
    for (var time in notificationTimes) {
      await widget.notificationsPlugin.showDailyAtTime(
          i,
          'Nowenna pompejańska',
          'Pora odmówić różaniec!',
          Time(time.hour, time.minute),
          platformChannelSpecifics);
      i++;
    }
  }
}
