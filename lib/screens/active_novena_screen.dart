import 'package:flutter/material.dart';
import 'package:novena/classes/novena.dart';
import 'package:novena/util/considerations.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import '../resources.dart';

class ActiveNovenaScreen extends StatefulWidget {
  final Novena _novena;
  final ValueChanged<Novena> _updateNovena;

  @override
  _ActiveNovenaScreenState createState() => _ActiveNovenaScreenState();

  ActiveNovenaScreen(this._novena, this._updateNovena);

  void updateNovena() {
    _updateNovena(_novena);
  }
}

class _ActiveNovenaScreenState extends State<ActiveNovenaScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Center(
            child: Text(
              Resources.of(context)
                  .dateOfNovenaEnd(date: widget._novena.formattedDate),
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),
            ),
          ),
          YoutubePlayer(
            controller: YoutubePlayerController(
              initialVideoId: Considerations.getConsiderationYoutubeUrlForDay(
                  ConsiderationType.LANGUSTA_2018, widget._novena.novenaDay),
              flags: YoutubePlayerFlags(
                mute: false,
                autoPlay: false,
                forceHideAnnotation: true,
              ),
            ),
            showVideoProgressIndicator: true,
            progressIndicatorColor: Colors.amber,
            width: MediaQuery.of(context).size.width * 0.2,
          ),
          CircularPercentIndicator(
            header: Text(
              Resources.of(context).numberOfDaysToFinishNovena,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),
            ),
            radius: 120.0,
            lineWidth: 13.0,
            animation: true,
            percent: (54 - widget._novena.daysToFinish) / 54,
            center: Text(
              '${widget._novena.daysToFinish}',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
            ),
            circularStrokeCap: CircularStrokeCap.round,
            progressColor: Colors.tealAccent,
          ),
          CircularPercentIndicator(
            header: Text(
              Resources.of(context).decadesToPrayToday,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),
            ),
            radius: 120.0,
            lineWidth: 13.0,
            animation: true,
            percent: (15 - widget._novena.decadesToPray) / 15,
            center: Text(
              '${widget._novena.decadesToPray}',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
            ),
            circularStrokeCap: CircularStrokeCap.round,
            progressColor: Colors.tealAccent,
          ),
          Align(
            alignment: FractionalOffset.bottomCenter,
            child: ButtonBar(
              alignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                RawMaterialButton(
                  child: Text(
                    Resources.of(context).prayed,
                    style: TextStyle(color: Colors.white),
                  ),
                  shape: new RoundedRectangleBorder(),
                  elevation: 2.0,
                  fillColor: Theme.of(context).primaryColor,
                  padding: const EdgeInsets.all(15.0),
                  onPressed: () {
                    return onPressedPrayedDecade(context);
                  },
                ),
                RawMaterialButton(
                  child: Text(
                    Resources.of(context).prayer,
                    style: TextStyle(color: Colors.white),
                  ),
                  shape: new RoundedRectangleBorder(),
                  elevation: 2.0,
                  fillColor: Theme.of(context).primaryColor,
                  padding: const EdgeInsets.all(15.0),
                  onPressed: () {
                    return onPressedPray(context, this.widget._novena);
                  },
                ),
                RawMaterialButton(
                  child: Text(
                    Resources.of(context).finishNovena,
                    style: TextStyle(color: Colors.white),
                  ),
                  shape: new RoundedRectangleBorder(),
                  elevation: 2.0,
                  fillColor: Theme.of(context).primaryColor,
                  padding: const EdgeInsets.all(15.0),
                  onPressed: () {
                    return onPressedFinishNovena(context);
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Future<void> onPressedPray(BuildContext context, Novena novena) {
    return showDialog<void>(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
              title: Text(Resources.of(context).todayPrayer),
              content: SingleChildScrollView(
                  child: Text(novena.getPrayerText(context))));
        });
  }

  Future<void> onPressedPrayedDecade(BuildContext context) {
    if (widget._novena.decadesToPray > 0) {
      widget._novena.prayDecades(1);
      widget.updateNovena();
      return null;
    } else {
      return showDialog<void>(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(Resources.of(context).preyedAllDecades),
            actions: <Widget>[
              FlatButton(
                child: Text(Resources.of(context).ok),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }
  }

  Future<void> onPressedFinishNovena(BuildContext context) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(Resources.of(context).areYouSureToFinishNovena),
          content: Text(Resources.of(context).finishBeforeEnd),
          actions: <Widget>[
            FlatButton(
              child: Text(Resources.of(context).no),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            FlatButton(
              child: Text(Resources.of(context).yes),
              onPressed: () {
                widget._novena.finishNovena();
                widget.updateNovena();
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
