import 'package:flutter/material.dart';
import 'package:novena/resources.dart';

class Mysteries {
  static List<Mystery> mysteriesFromContext(BuildContext context) {
    Resources resources = Resources.of(context);
    return [
      Mystery(resources.joyfulMysteries, [
        resources.joyfulMysteries1,
        resources.joyfulMysteries2,
        resources.joyfulMysteries3,
        resources.joyfulMysteries4,
        resources.joyfulMysteries5
      ]),
      Mystery(resources.sorrowfulMysteries, [
        resources.sorrowfulMysteries1,
        resources.sorrowfulMysteries2,
        resources.sorrowfulMysteries3,
        resources.sorrowfulMysteries4,
        resources.sorrowfulMysteries5
      ]),
      Mystery(resources.gloriousMysteries, [
        resources.gloriousMysteries1,
        resources.gloriousMysteries2,
        resources.gloriousMysteries3,
        resources.gloriousMysteries4,
        resources.gloriousMysteries5
      ]),
      Mystery(resources.luminousMysteries, [
        resources.luminousMysteries1,
        resources.luminousMysteries2,
        resources.luminousMysteries3,
        resources.luminousMysteries4,
        resources.luminousMysteries5
      ])
    ];
  }
}

class Mystery {
  final String _name;
  final List<String> _mysteries;

  Mystery(this._name, this._mysteries);

  List<String> get mysteries => _mysteries;

  String get name => _name;
}
