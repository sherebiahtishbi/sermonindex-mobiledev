import 'package:flutter/material.dart';
import 'package:sermonindex/config/appsettings.dart';

Widget AppHeader = AppBar(
  leading: IconButton(
    icon: Icon(
      Icons.menu,
      color: Colors.white,
    ),
    onPressed: () {},
  ),
  title: AppSettings.SI_TITLE_HOME,
  centerTitle: true,
  backgroundColor: AppSettings.SI_BGCOLOR,
  actions: <Widget>[
    IconButton(
      icon: Icon(
        Icons.settings,
        color: Colors.white,
      ),
      onPressed: () {},
    )
  ],
);
