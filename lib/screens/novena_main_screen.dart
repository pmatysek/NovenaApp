import 'package:flutter/material.dart';
import 'package:novena/classes/novena.dart';
import 'package:novena/screens/about_novena_screen.dart';
import 'package:novena/screens/active_novena_screen.dart';
import 'package:novena/screens/how_to_pray_screen.dart';
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

  @override
  initState() {
    super.initState();
    _novena = NovenaRepository.getCurrentNovena();
    _activeScreen = Screen.NOVENA_MAIN;
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
          return ActiveNovenaScreen(novena, _updateNovena);
        }
        return StartNovenaScreen(novena, _updateNovena);
      case Screen.ABOUT_NOVENA:
        return AboutNovenaScreen();
      case Screen.HOW_TO_PRAY:
        return HowToPrayScreen();
      case Screen.SUPPORT:
        return SupportScreen();
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
              return Center(child:CircularProgressIndicator());
            }
          },
        ));
  }
}
