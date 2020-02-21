import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

import '../resources.dart';

class SupportScreen extends StatefulWidget {
  SupportScreen({Key key}) : super(key: key);

  @override
  _SupportScreenState createState() => _SupportScreenState();
}

class _SupportScreenState extends State<SupportScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Html(
              padding: EdgeInsets.all(8.0),
              data: Resources.of(context).supportHtml),
        ],
      ),
    );
  }
}
