import 'package:flutter/material.dart';
import 'package:novena/classes/screen_enum.dart';

import '../resources.dart';

class NovenaAppDrawer extends StatelessWidget {
  final ValueChanged<Screen> _updateScreen;

  NovenaAppDrawer(this._updateScreen);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(
              Resources.of(context).appTitle,
              style: Theme.of(context).textTheme.title,
            ),
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text(Resources.of(context).novenaScreenTitle),
            onTap: () {
              _updateScreen(Screen.NOVENA_MAIN);
              Navigator.of(context).pop();
            },
          ),
          ListTile(
            leading: Icon(Icons.calendar_today),
            title: Text(Resources.of(context).howToPrayTitle),
            onTap: () {
              _updateScreen(Screen.HOW_TO_PRAY);
              Navigator.of(context).pop();
            },
          ),
//          ListTile(
//            leading: Icon(Icons.info),
//            title: Text(Resources.of(context).aboutNovenaTitle),
//            onTap: () {
//              _updateScreen(Screen.ABOUT_NOVENA);
//              Navigator.of(context).pop();
//            },
//          ),
          ListTile(
            leading: Icon(Icons.monetization_on),
            title: Text("Wsparcie"),
            onTap: () {
              _updateScreen(Screen.SUPPORT);
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }
}
