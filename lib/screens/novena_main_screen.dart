import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:novena/classes/novena.dart';
import 'package:novena/screens/about_novena_screen.dart';
import 'package:novena/screens/active_novena_screen.dart';
import 'package:novena/screens/how_to_pray_screen.dart';
import 'package:novena/screens/rosary_mysteries_screen.dart';
import 'package:novena/screens/support_screen.dart';
import 'package:novena/util/novena_app_drawer.dart';
import 'package:novena/classes/screen_enum.dart';
import 'package:novena/screens/start_novena_screen.dart';
import 'package:novena/util/novena_repository.dart';

class NovenaMainScreen extends StatefulWidget {
  NovenaMainScreen({this.title});

  final String title;

  @override
  _NovenaMainScreenState createState() => _NovenaMainScreenState();
}

class _NovenaMainScreenState extends State<NovenaMainScreen> {
  Future<Novena> _novena;
  Screen _activeScreen;
  FlutterLocalNotificationsPlugin _notificationsPlugin;

  @override
  void initState() {
    super.initState();
    _novena = NovenaRepository.getCurrentNovena();
    _activeScreen = Screen.NOVENA_MAIN;
    initNotificationsPlugin();
  }

  void initNotificationsPlugin() {
    _notificationsPlugin = FlutterLocalNotificationsPlugin();
    //var androidSettings = AndroidInitializationSettings('@mipmap/launcher_icon');
    var androidSettings = AndroidInitializationSettings(Icons.info.toString());
    var iosSettings = IOSInitializationSettings();
    var initSettings = InitializationSettings(androidSettings, iosSettings);
    _notificationsPlugin.initialize(initSettings,
        onSelectNotification: selectNotifications);
  }

  Future selectNotifications(String payload) async {
    await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => NovenaMainScreen(title: "NovenaApp")),
    );
  }

  _updateNovena(Novena novena) {
    Future<Novena> savedNovena = NovenaRepository.saveNovena(novena);
    _novena = savedNovena;
    setState(() {});
  }

  _updateActiveScreen(Screen screen) {
    setState(() {
      _activeScreen = screen;
    });
  }

  Widget getActiveScreenWidget(Novena novena) {
    switch (_activeScreen) {
      case Screen.NOVENA_MAIN:
        if (novena != null && novena.isStarted()) {
          if (novena.novenaDay > 54) {
            return AlertDialog(
              title: Text("Zakończyłeś Nowennę!"),
              content: Text(
                  "Gratulację, udało Ci się zakończyć Nowennę Pompejańską :-) Zachęcam do odmówienia kolejnej"),
              actions: <Widget>[
                FlatButton(
                  child: Text('Ok'),
                  onPressed: () {
                    novena.finishNovena();
                    _updateNovena(novena);
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          }
          return ActiveNovenaScreen(novena, _updateNovena, _notificationsPlugin);
        }
        return StartNovenaScreen(novena, _updateNovena, _notificationsPlugin);
      case Screen.ABOUT_NOVENA:
        return AboutNovenaScreen();
      case Screen.HOW_TO_PRAY:
        return HowToPrayScreen();
      case Screen.SUPPORT:
        return SupportScreen();
      case Screen.ROSARY_MYSTERIES:
        return RosaryMysteriesScreen();
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        drawer: NovenaAppDrawer(_updateActiveScreen),
        body: FutureBuilder<Novena>(
          future: _novena,
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return getActiveScreenWidget(snapshot.data);
            } else {
              return Center(child: CircularProgressIndicator());
            }
          },
        ));
  }
}
