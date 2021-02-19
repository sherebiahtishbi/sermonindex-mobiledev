import 'package:flutter/material.dart';
import 'package:sermonindex/config/appsettings.dart';
import 'package:sermonindex/models/mdl_speakerinfo.dart';
// import 'package:sermonindex/widgets/sermonlistheader.dart';

class PlayerPage extends StatefulWidget {
  final Sermon sermon;
  final String speakerName;
  final String speakerImageUrl;

  PlayerPage(this.sermon, this.speakerName, this.speakerImageUrl);

  @override
  _PlayerPageState createState() =>
      _PlayerPageState(this.sermon, this.speakerName, this.speakerImageUrl);
}

class _PlayerPageState extends State<PlayerPage> {
  final Sermon sermon;
  final String speakerName;
  final String imageUrl;

  _PlayerPageState(this.sermon, this.speakerName, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(color: AppSettings.SI_BGCOLOR),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Text(
            sermon.title,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.black45,
                fontSize: 24,
                fontWeight: FontWeight.w400),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
            // child: Image.network(imageUrl,scale: , ),
            child: FittedBox(
              child: Image.network(imageUrl),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Text(
            sermon.topic,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.black45,
                fontSize: 24,
                fontWeight: FontWeight.w400),
          ),
          SizedBox(
            height: 25,
          ),
          Text(
            sermon.description,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.black45,
                fontSize: 16,
                fontWeight: FontWeight.w600),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Material(
                color: AppSettings.SI_BGCOLOR,
                child: IconButton(
                  icon: Icon(Icons.fast_rewind),
                  onPressed: null,
                  iconSize: 40,
                  color: Colors.black,
                ),
              ),
              Material(
                color: AppSettings.SI_BGCOLOR,
                child: IconButton(
                  icon: Icon(Icons.play_arrow),
                  onPressed: null,
                  iconSize: 50,
                  color: Colors.black,
                ),
              ),
              Material(
                color: AppSettings.SI_BGCOLOR,
                child: IconButton(
                    icon: Icon(Icons.fast_forward),
                    onPressed: null,
                    iconSize: 40,
                    color: Colors.black),
              )
            ],
          )
        ],
      ),
    );
  }
}
