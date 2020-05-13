import 'package:flutter/material.dart';
import 'package:novena/util/mysteries.dart';

class RosaryMysteriesScreen extends StatefulWidget {
  RosaryMysteriesScreen({Key key}) : super(key: key);

  @override
  _RosaryMysteriesScreenState createState() => _RosaryMysteriesScreenState();
}

class _RosaryMysteriesScreenState extends State<RosaryMysteriesScreen> {
  @override
  Widget build(BuildContext context) {
    List<Mystery> mysteries = Mysteries.mysteriesFromContext(context);
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: mysteries.length,
            itemBuilder: (context, i) {
              return new ExpansionTile(
                title: Text(
                  mysteries[i].name,
                  style: new TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                children: <Widget>[
                  new Column(
                    children: buildListFromMysteries(mysteries[i]),
                  ),
                ],
              );
            },
          )
        ],
      ),
    );
  }

  buildListFromMysteries(Mystery mystery) {
    List<Widget> columnContent = [];
    for (String part in mystery.mysteries) {
      columnContent.add(
        new ListTile(
            title: new Text(
          part,
          style: new TextStyle(fontSize: 18.0),
        )),
      );
    }
    return columnContent;
  }
}
