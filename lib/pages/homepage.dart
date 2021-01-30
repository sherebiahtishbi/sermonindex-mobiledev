import 'package:flutter/material.dart';
import 'package:sermonindex/widgets/wdg_appheader.dart';
import 'package:sermonindex/widgets/wdg_speakers.dart';

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppHeader,
      body: Container(
        color: Colors.lime[800],
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Speakers(),
        ),
      ),
    );
  }
}
