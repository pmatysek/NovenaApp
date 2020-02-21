import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../resources.dart';

class HowToPrayScreen extends StatefulWidget {
  HowToPrayScreen({Key key}) : super(key: key);

  @override
  _HowToPrayScreenState createState() => _HowToPrayScreenState();
}

class _HowToPrayScreenState extends State<HowToPrayScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            Resources.of(context).howToPrayTitle + '?',
            style: Theme.of(context).textTheme.title,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Html(data: Resources.of(context).howToPrayHtml),
                  YoutubePlayer(
                    controller: YoutubePlayerController(
                      initialVideoId: Resources.of(context).howToPrayYtUrl,
                      flags: YoutubePlayerFlags(
                        mute: false,
                        autoPlay: false,
                        forceHideAnnotation: true,
                      ),
                    ),
                    showVideoProgressIndicator: true,
                    progressIndicatorColor: Colors.amber,
                    width: MediaQuery.of(context).size.width * 0.75,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
