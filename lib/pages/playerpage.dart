import 'package:flutter/material.dart';
import 'package:sermonindex/models/mdl_speakerinfo.dart';
import 'package:sermonindex/widgets/sermonlistheader.dart';

class PlayerPage extends StatefulWidget {
  final Sermon sermon;

  PlayerPage(this.sermon);

  @override
  _PlayerPageState createState() => _PlayerPageState(this.sermon);
}

class _PlayerPageState extends State<PlayerPage> {
  final Sermon sermon;

  _PlayerPageState(this.sermon);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SermonlistHeader(speakername: sermon.title).build(context),
      body: Container(),
    );
  }
}
