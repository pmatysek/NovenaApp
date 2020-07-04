import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:novena/resources.dart';
import 'package:novena/screens/novena_main_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
      localizationsDelegates: [
        const ResourcesDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: ResourcesDelegate.supportedLocals,
      title: "NovenaApp",
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: NovenaMainScreen(title: "NovenaApp"),
    );
  }
}
