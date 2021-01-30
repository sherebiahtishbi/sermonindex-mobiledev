import 'package:flutter/material.dart';
// import 'package:sermonindex/widgets/wdg_appheader.dart';
import 'package:sermonindex/widgets/wdg_header.dart';
import 'package:sermonindex/widgets/wdg_speakers.dart';

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.lime[800],
        child: Column(
          children: [
            Column(
              children: [
                Header(),
              ],
            ),
            Row(
              children: [Speakers()],
            )
          ],
        ),
      ),
    );
  }
}
