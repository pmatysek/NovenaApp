import 'package:flutter/material.dart';

import '../resources.dart';

class AboutNovenaScreen extends StatefulWidget {
  AboutNovenaScreen({Key key}) : super(key: key);

  @override
  _AboutNovenaScreenState createState() => _AboutNovenaScreenState();
}

class _AboutNovenaScreenState extends State<AboutNovenaScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            Resources.of(context).aboutNovenaTitle,
            style: Theme.of(context).textTheme.title,
          ),
          SizedBox(height: 45),
          Expanded(
              flex: 1,
              child: SingleChildScrollView(
                child: Text(
                  Resources.of(context).aboutNovenaText,
                  style: Theme.of(context).textTheme.display1,
                ),
              ))
        ],
      ),
    );
  }
}
