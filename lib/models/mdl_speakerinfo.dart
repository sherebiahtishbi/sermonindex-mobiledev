import 'dart:convert';

import 'package:sermonindex/config/appsettings.dart';
import 'package:sermonindex/models/mdl_speaker.dart';
import 'package:http/http.dart' as http;

class SpeakerInfo {
  final String speakerName;
  final String description;
  final int totalSermons;
  final List<Sermon> sermons;

  SpeakerInfo(
      {this.speakerName, this.description, this.totalSermons, this.sermons});
}

class Sermon {
  final String title;
  final String url;
  final List<String> scriptures;
  final String topic;

  Sermon({this.title, this.url, this.scriptures, this.topic});
}

Future<SpeakerInfo> getSpeakerInfo(Speaker speaker) async {
  final response = await http
      .get(AppSettings.baseApi + "speaker/" + speaker.spkName + ".json");

  if (response.statusCode == 200) {
    final jsonData = jsonDecode(response.body);
    // print(jsonData);
    List<Sermon> sermons = [];
    var jsonSermons = jsonData["sermons"];
    jsonSermons.forEach((sermon) => {
          sermons.add(new Sermon(
              title: sermon["title"],
              url: sermon["url"],
              topic: sermon["topic"]))
        });

    SpeakerInfo speakerInfo = SpeakerInfo(
        speakerName: jsonData["name"],
        description: jsonData["description"],
        totalSermons: jsonSermons.length,
        sermons: sermons);
    return speakerInfo;
  } else {
    return null;
  }
}
