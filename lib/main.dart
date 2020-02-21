import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:novena/resources.dart';
import 'package:novena/screens/novena_main_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
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
